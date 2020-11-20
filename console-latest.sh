#!/bin/sh
CONSOLE_NS=console-latest
CLUSTER_HOSTNAME=do.openshiftco.de
oc new-project $CONSOLE_NS
oc process -f ./console-template-openshift.yaml -p CONSOLE_HOSTNAME=$CONSOLE_NS.apps.$CLUSTER_HOSTNAME | oc apply -f -
