{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_call_em_up (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/nairobi/Desktop/work/haskell-from-first-principles/hello-world/call-em-up/.stack-work/install/x86_64-linux/lts-8.18/8.0.2/bin"
libdir     = "/home/nairobi/Desktop/work/haskell-from-first-principles/hello-world/call-em-up/.stack-work/install/x86_64-linux/lts-8.18/8.0.2/lib/x86_64-linux-ghc-8.0.2/call-em-up-0.1.0.0-A0uyAyS0hQoBFvxP0YBix9"
dynlibdir  = "/home/nairobi/Desktop/work/haskell-from-first-principles/hello-world/call-em-up/.stack-work/install/x86_64-linux/lts-8.18/8.0.2/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/nairobi/Desktop/work/haskell-from-first-principles/hello-world/call-em-up/.stack-work/install/x86_64-linux/lts-8.18/8.0.2/share/x86_64-linux-ghc-8.0.2/call-em-up-0.1.0.0"
libexecdir = "/home/nairobi/Desktop/work/haskell-from-first-principles/hello-world/call-em-up/.stack-work/install/x86_64-linux/lts-8.18/8.0.2/libexec"
sysconfdir = "/home/nairobi/Desktop/work/haskell-from-first-principles/hello-world/call-em-up/.stack-work/install/x86_64-linux/lts-8.18/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "call_em_up_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "call_em_up_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "call_em_up_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "call_em_up_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "call_em_up_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "call_em_up_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
