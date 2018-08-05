/***
*** Requester Name:  	Iranna Teggi
*** Purpose :		 	adding a Function to get the Regional Company lead time
*** Schema  :		 	SWITCH_A,SWITCH_B,SWITCH_STAGE_A,SWITCH_STAGE_B
*** Date of Request : 	Aug 21, 2017
***/

CREATE OR replace FUNCTION Get_regional_company_lead(
region_var       IN VARCHAR2,
servicelevel_var IN VARCHAR2,
gck_var          IN VARCHAR2,
pck_var          IN VARCHAR2)
RETURN VARCHAR2
IS
  leadtimeid      VARCHAR2(100);
  gck_length      NUMBER := 0;
  pck_length      NUMBER := 0;
  match_found     NUMBER := 0;
  gck_query_param VARCHAR2(100);
  pck_query_param VARCHAR2(100);
BEGIN
    leadtimeid := 0;

    gck_length := Length(gck_var);

    pck_length := Length(pck_var);

    --Running GCK loop where GCK is High precedence
    FOR i IN 1..gck_length+1 LOOP
        IF( i = 1 ) THEN
          --First loop
          gck_query_param := gck_var;
        ELSE
          IF ( i = gck_length + 1 ) THEN
            --Last Loop
            gck_query_param := '*';
          ELSE
            gck_query_param := Substr(gck_var, 1, gck_length + 1 - i)
                               ||'*';
          END IF;
        END IF;

        --Running PCK loop
        FOR j IN 1..pck_length+1 LOOP
            IF( j = 1 ) THEN
              --First Loop
              pck_query_param := pck_var;
            ELSE
              IF ( j = pck_length + 1 ) THEN
                --Last Loop
                pck_query_param := '*';
              ELSE
                pck_query_param := Substr(pck_var, 1, pck_length + 1 - j)
                                   ||'*';
              END IF;
            END IF;

            --Need to Optimise two queries to single using IF FOUND.
            SELECT Count(*)
            INTO   match_found
            FROM   sk_rc_lead_times
            WHERE  UPPER(region) = UPPER(region_var)
                   AND UPPER(service_level) = UPPER(servicelevel_var)
                   AND gck = gck_query_param
                   AND pck = pck_query_param;

            IF( 0 < match_found ) THEN
              --Copying the ID, even when there are two Columns
              SELECT id
              INTO   leadtimeid
              FROM   sk_rc_lead_times
              WHERE  UPPER(region) = UPPER(region_var)
                     AND UPPER(service_level) = UPPER(servicelevel_var)
                     AND gck = gck_query_param
                     AND pck = pck_query_param
                     AND ROWNUM = 1;

              --Printing the Logs
              dbms_output.Put_line('region:: '
                                   ||region_var);

              dbms_output.Put_line('service_level:: '
                                   ||servicelevel_var);

              dbms_output.Put_line('gck_query_param:: '
                                   ||gck_query_param);

              dbms_output.Put_line('pck_query_param:: '
                                   ||pck_query_param);

              dbms_output.Put_line('MATCH FOUND!!! And Lead Time::: '
                                   ||leadtimeid);
            END IF;

            IF ( match_found != '0' ) THEN
              EXIT;
            END IF;
        END LOOP;

        IF ( match_found != '0' ) THEN
          EXIT;
        END IF;
    END LOOP;

    RETURN leadtimeid;
END;

/ 