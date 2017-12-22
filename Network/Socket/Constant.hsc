#include "HsNet.h"
##include "HsNetDef.h"
{-# OPTIONS_GHC -fno-warn-deprecations #-}

module Network.Socket.Constant where

import Network.Socket.Types

-- ---------------------------------------------------------------------------
-- Utility Functions

aNY_PORT :: PortNumber
aNY_PORT = 0

-- | The IPv4 wild card address.

iNADDR_ANY :: HostAddress
iNADDR_ANY = htonl (#const INADDR_ANY)

#if defined(IPV6_SOCKET_SUPPORT)
-- | The IPv6 wild card address.

iN6ADDR_ANY :: HostAddress6
iN6ADDR_ANY = (0, 0, 0, 0)
#endif

sOMAXCONN :: Int
sOMAXCONN = #const SOMAXCONN

sOL_SOCKET :: Int
sOL_SOCKET = #const SOL_SOCKET

#ifdef SCM_RIGHTS
sCM_RIGHTS :: Int
sCM_RIGHTS = #const SCM_RIGHTS
#endif

-- | This is the value of SOMAXCONN, typically 128.
-- 128 is good enough for normal network servers but
-- is too small for high performance servers.
maxListenQueue :: Int
maxListenQueue = sOMAXCONN