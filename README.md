This project follows the architect's instructions below: https://drive.google.com/file/d/1FG5ErmHt1OaaBnaTugwajEcWm6khfKYy/view?usp=sharing

## 1 - Create a new environment "production": 

### vars:
```
  AWS_ACCESS_KEY_ID,
  AWS_PRIVATE_KEY,
  AWS_PUBLIC_KEY,
  AWS_SECRET_ACCESS_KEY,
  AWS_SESSION_TOKEN,
  BUCKET_NAME,
  SSH_USER
```
![image](https://github.com/wessRibeiro/iac-activity-final/assets/7069614/9a1178cb-38e0-4e20-8a9f-1dad2a344ea0)

## 2 - Must run the first workflow create-s3-backend.yml to create a backend for terraform:
![image](https://github.com/wessRibeiro/iac-activity-final/assets/7069614/3c2b0ce2-5378-4a87-be66-215acf8409c7)

> [!NOTE]
> there're inputs on workflow_dispatch form that override environment variables if desired. They aren't required, you can simply leave them empty and click on the run button.    

## 3 - Finally run Deployment
![image](https://github.com/wessRibeiro/iac-activity-final/assets/7069614/982f6930-c4c7-450d-9d26-707c2f3a4694)

![image](https://github.com/wessRibeiro/iac-activity-final/assets/7069614/52c1ccc7-2e7a-41c1-abe6-855edd4eb2ae)

## Result:
...
