#include "host.h"
using namespace foxintango;

static Host  HOST_INSTANCE_DEFAULT;

Host* Host::instance() {
    return &HOST_INSTANCE_DEFAULT;
}

Host::Host() {

}

Host::~Host() {

}
