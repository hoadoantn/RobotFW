# RobotFW

### Prerequisites for running this acceptance testing framework
+ Python with PIP
+ Robot Framework
+ IDE (RIDE,Pycharm)

## Installation
```
pip install -r requirments.txt
```
robotframework-pabot is to run parallel

## Workflow of robot FW
+ First, Variables happens
+ Second, Settings happens
+ Third, Test Cases happens

## Run test suites in serialization
```
robot tests/testsuites/*.robot
```

## Run test suites in parallel
```
pabot --processes 2 --outputdir report_results testsuites\*.robot
```
