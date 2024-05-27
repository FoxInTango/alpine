/*++

Module Name:

    public.h

Abstract:

    This module contains the common declarations shared by driver
    and user applications.

Environment:

    user and kernel

--*/

//
// Define an Interface Guid so that apps can find the device and talk to it.
//

DEFINE_GUID (GUID_DEVINTERFACE_alpineinkernel,
    0x461273b2,0x1845,0x4b11,0xb2,0x7e,0x40,0x13,0x04,0xea,0x28,0x27);
// {461273b2-1845-4b11-b27e-401304ea2827}
