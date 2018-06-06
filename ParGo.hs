{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
{-# OPTIONS -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGo where
import AbsGo
import LexGo
import ErrM
import Control.Monad
import Structures
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: t24 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: t25 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: t26 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> t26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x44\x45\x84\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x22\x00\x01\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x02\x40\x45\x84\x00\x00\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x16\xcb\x0e\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x00\x20\x00\x00\x00\x00\x00\x01\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x08\x00\x15\x11\x02\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x15\x11\x22\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x50\x11\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x22\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\x08\x00\x00\x00\x00\x00\x00\x00\x80\x75\xb3\x03\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x84\x0d\x00\x00\x00\x00\x00\x00\x00\x40\x2a\x01\x00\x02\x10\xf0\x01\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x40\x2a\x01\x00\x02\x10\xf0\x01\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x40\x2a\x01\x00\x02\x10\xf0\x01\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x40\x2a\x01\x00\x02\x10\xf0\x01\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\xe9\x04\x00\x08\x40\xc0\x07\x00\x00\x00\x20\x00\x54\x44\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x65\xb3\x0b\x00\x00\x04\x00\x00\x00\x60\xd8\xec\x00\x00\x00\x00\x00\x00\x00\x10\x36\x00\x00\x00\x00\x00\x00\x00\x00\x84\x0d\x00\x00\x00\x00\x00\x00\x00\x00\x61\x03\x00\x00\x00\x00\x00\x00\x00\x40\xd8\x00\x00\x00\x00\x00\x00\x00\x00\x10\x36\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x21\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x22\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x61\xb3\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x36\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x4a\x00\xa8\x4e\xd5\x7e\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x04\x00\x00\x00\x00\x00\x00\x60\x91\xec\x00\x00\x00\x01\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x40\x2a\x01\x00\x02\x10\xf0\x01\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x80\x45\xb2\x03\x00\x00\x04\x00\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x96\xcd\x0e\x00\x00\x18\x00\x00\x00\x80\x65\xb3\x03\x00\x00\x06\x00\x00\x00\x90\x4a\x00\x80\x00\x04\x7c\x00\x00\x00\xa4\x12\x00\x20\x00\x01\x1f\x00\x00\x00\x16\xc9\x0e\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\xa9\x04\x00\x08\x40\xc0\x07\x00\x00\x80\x75\xb3\x03\x00\x00\x04\x00\x00\x00\x60\xdd\xec\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x65\xb3\x03\x00\x00\x06\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pStart","Integer","Double","Char","String","Id","Start","Decl","ShortVarDecl","Param","Pass","Type","Block","Stmt","StmtSmpl","LExp","RExp","Value","Boolean","ListId","ListExpR","ListDecl","ListParam","ListStmt","'!'","'!='","'%'","'&'","'&&'","'('","')'","'*'","'+'","','","'-'","'/'","':='","';'","'<'","'<='","'='","'=='","'>'","'>='","'['","']'","'bool'","'break'","'char'","'continue'","'else'","'false'","'float'","'for'","'func'","'if'","'int'","'package'","'read'","'ref'","'return'","'string'","'true'","'val'","'var'","'void'","'write'","'{'","'||'","'}'","L_integ","L_doubl","L_charac","L_quoted","L_Id","%eof"]
        bit_start = st * 78
        bit_end = (st + 1) * 78
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..77]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xdf\xff\xd5\xff\x00\x00\xd2\xff\xe2\xff\x00\x00\x00\x00\x1e\x00\x00\x00\xe2\xff\xe2\xff\x10\x00\x0b\x01\x16\x00\xef\xff\x05\x00\x1b\x01\x3a\x00\xf6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf4\xff\x00\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\x27\x00\x41\x00\x00\x00\x00\x00\x00\x00\x3a\x00\x02\x00\x3a\x00\x3a\x00\x3a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3a\x00\x35\x00\x1b\x00\x1b\x01\x58\x00\x00\x00\x00\x00\x00\x01\x00\x00\x1b\x01\xef\xff\x00\x00\x00\x00\x94\x00\x6d\x00\x00\x00\x48\x00\xae\x01\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x3a\x00\x07\x00\x1b\x01\x00\x00\x5b\x00\x00\x00\x80\x00\xc1\x01\xd4\x01\xd4\x01\xd4\x01\xd4\x01\xd4\x01\x00\x00\x94\x00\x00\x00\x94\x00\x00\x00\xe7\x01\x00\x00\xfa\x01\x00\x00\x00\x00\x00\x00\x32\x00\x32\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x56\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\xeb\x00\x64\x00\x00\x00\x00\x00\x3a\x00\x3a\x00\x5e\x00\x3a\x00\x71\x00\x00\x00\x3a\x00\xeb\x00\x3a\x00\x65\x00\x96\x00\x96\x00\x3a\x00\x3a\x00\xfe\x00\x00\x00\x00\x00\x5f\x00\x3a\x00\xa9\x00\xc5\x00\x00\x00\x00\x00\xd8\x00\x4f\x00\x00\x00\x63\x00\x5a\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x7f\x00\x00\x00\x00\x00\x00\x00\x83\x00\x76\x00\x00\x00\x87\x00\x00\x00\x8a\x00\xff\xff\x00\x00\x8b\x00\x00\x00\xbd\x00\x00\x00\x93\x00\x42\x01\x91\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x57\x00\x44\x00\x0f\x02\x14\x02\x26\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x48\x01\x00\x00\x3d\x00\x99\x00\x00\x00\x00\x00\x00\x00\x9a\x00\x00\x00\x9d\x00\x25\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2b\x02\x3d\x02\x42\x02\x54\x02\x59\x02\x5c\x01\x6b\x02\x70\x02\x82\x02\x87\x02\x99\x02\x9e\x02\xb0\x02\xb5\x02\xc7\x02\x62\x01\xa5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa8\x00\xab\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x00\x00\x8a\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcc\x02\x9d\x01\x00\x00\xde\x02\x00\x00\x00\x00\xe3\x02\x00\x00\xf5\x02\x00\x00\xaf\x00\xb3\x00\x76\x01\xfa\x02\x00\x00\x00\x00\x00\x00\x00\x00\x0c\x03\x00\x00\x00\x00\x00\x00\x00\x00\xb4\x00\xb5\x00\x00\x00\x00\x00\xb9\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\xfe\xff\x00\x00\x00\x00\xb3\xff\xfa\xff\xf9\xff\xb2\xff\x00\x00\x00\x00\xb7\xff\x00\x00\x00\x00\xb1\xff\xf6\xff\x00\x00\x00\x00\x00\x00\xed\xff\xeb\xff\xec\xff\xee\xff\xea\xff\x00\x00\xb6\xff\x00\x00\xbe\xff\xbd\xff\xbc\xff\xbb\xff\xd6\xff\xc3\xff\xb5\xff\xc4\xff\xba\xff\xf5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb8\xff\xb9\xff\xfd\xff\xfc\xff\xfb\xff\xe8\xff\x00\x00\xb0\xff\x00\x00\x00\x00\x00\x00\xef\xff\xf0\xff\x00\x00\xf2\xff\x00\x00\xb1\xff\xf4\xff\xc5\xff\xd4\xff\x00\x00\xd6\xff\xc0\xff\xc6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\xff\x00\x00\xc2\xff\x00\x00\xc7\xff\xc9\xff\xca\xff\xce\xff\xcb\xff\xcc\xff\xd0\xff\xd2\xff\xb4\xff\xd3\xff\xd1\xff\xc8\xff\xcf\xff\xcd\xff\xbf\xff\xaf\xff\xf1\xff\x00\x00\x00\x00\xf7\xff\xae\xff\xf8\xff\xd5\xff\xc1\xff\x00\x00\xd6\xff\xde\xff\xd9\xff\xe6\xff\xad\xff\xe5\xff\xc3\xff\xd8\xff\x00\x00\xdd\xff\xdc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe7\xff\x00\x00\xe4\xff\x00\x00\x00\x00\xd8\xff\x00\x00\x00\x00\x00\x00\xd7\xff\xf3\xff\xdf\xff\xe3\xff\x00\x00\x00\x00\x00\x00\xdb\xff\xda\xff\x00\x00\x00\x00\xe2\xff\xe1\xff\x00\x00\xe0\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x22\x00\x01\x00\x04\x00\x2f\x00\x04\x00\x34\x00\x06\x00\x01\x00\x08\x00\x08\x00\x04\x00\x0b\x00\x06\x00\x07\x00\x08\x00\x04\x00\x12\x00\x0b\x00\x24\x00\x11\x00\x33\x00\x11\x00\x28\x00\x15\x00\x18\x00\x0a\x00\x1a\x00\x06\x00\x1c\x00\x12\x00\x1e\x00\x1f\x00\x20\x00\x33\x00\x1c\x00\x23\x00\x2f\x00\x25\x00\x33\x00\x27\x00\x16\x00\x29\x00\x06\x00\x2b\x00\x2c\x00\x27\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x33\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x01\x00\x15\x00\x1f\x00\x04\x00\x0a\x00\x06\x00\x04\x00\x08\x00\x02\x00\x03\x00\x0b\x00\x05\x00\x29\x00\x04\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x33\x00\x12\x00\x0f\x00\x10\x00\x0e\x00\x12\x00\x13\x00\x14\x00\x1c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x15\x00\x2c\x00\x07\x00\x0a\x00\x27\x00\x07\x00\x0d\x00\x06\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x33\x00\x2d\x00\x02\x00\x03\x00\x0d\x00\x05\x00\x0e\x00\x07\x00\x08\x00\x09\x00\x06\x00\x0b\x00\x0c\x00\x1b\x00\x2c\x00\x0f\x00\x10\x00\x1b\x00\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\x05\x00\x05\x00\x2c\x00\x04\x00\x08\x00\x09\x00\x14\x00\x0b\x00\x0c\x00\x06\x00\x04\x00\x0f\x00\x10\x00\x00\x00\x12\x00\x13\x00\x14\x00\x0a\x00\x16\x00\x03\x00\x02\x00\x03\x00\x2d\x00\x05\x00\x08\x00\x0a\x00\x08\x00\x09\x00\x0c\x00\x0b\x00\x0c\x00\x0a\x00\x0a\x00\x0f\x00\x10\x00\x0a\x00\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\x2d\x00\x05\x00\x0a\x00\x07\x00\x08\x00\x09\x00\x0b\x00\x0b\x00\x0c\x00\x0b\x00\x16\x00\x0f\x00\x10\x00\x0b\x00\x12\x00\x13\x00\x14\x00\x0b\x00\x0b\x00\x0b\x00\x04\x00\x2c\x00\x2d\x00\x0b\x00\x08\x00\x09\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\x07\x00\x08\x00\x09\x00\x12\x00\x0b\x00\x0c\x00\x15\x00\xff\xff\x0f\x00\x10\x00\x2d\x00\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\x2d\x00\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\x05\x00\x2c\x00\x2d\x00\xff\xff\x09\x00\x08\x00\xff\xff\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x08\x00\xff\xff\x15\x00\xff\xff\x17\x00\x2d\x00\x19\x00\xff\xff\xff\xff\x11\x00\x1d\x00\xff\xff\xff\xff\x15\x00\x21\x00\x17\x00\x08\x00\x19\x00\xff\xff\x26\x00\xff\xff\x1d\x00\x04\x00\x2a\x00\x2d\x00\x21\x00\x08\x00\x09\x00\xff\xff\x15\x00\x26\x00\x17\x00\xff\xff\x19\x00\xff\xff\xff\xff\x12\x00\x1d\x00\xff\xff\x15\x00\xff\xff\x21\x00\xff\xff\xff\xff\xff\xff\xff\xff\x26\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x13\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x13\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x13\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x13\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x13\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x06\x00\x07\x00\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x0f\x00\x10\x00\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x05\x00\x26\x00\x0b\x00\x03\x00\x27\x00\xff\xff\x28\x00\x26\x00\x29\x00\x29\x00\x27\x00\x2a\x00\x28\x00\x56\x00\x29\x00\x0b\x00\x0c\x00\x2a\x00\x36\x00\x89\x00\x07\x00\x31\x00\x37\x00\x51\x00\x7a\x00\x19\x00\x7b\x00\x0f\x00\x2b\x00\x19\x00\x7c\x00\x0a\x00\x7d\x00\x07\x00\x2b\x00\x7e\x00\x03\x00\x7f\x00\x07\x00\x2c\x00\x53\x00\x0b\x00\x52\x00\x80\x00\x6c\x00\x2c\x00\x81\x00\x03\x00\x2d\x00\x2e\x00\x2f\x00\x07\x00\x07\x00\x03\x00\x2d\x00\x2e\x00\x2f\x00\x07\x00\x26\x00\x51\x00\x0a\x00\x27\x00\x3b\x00\x28\x00\x0b\x00\x29\x00\x43\x00\x44\x00\x2a\x00\x45\x00\x0b\x00\x3f\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x07\x00\x39\x00\x4b\x00\x4c\x00\x40\x00\x4d\x00\x4e\x00\x4f\x00\x2b\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x52\x00\x51\x00\x6c\x00\x38\x00\x19\x00\x2c\x00\x6f\x00\xb7\xff\x84\x00\x20\x00\x41\x00\x22\x00\x23\x00\x03\x00\x2d\x00\x2e\x00\x2f\x00\x07\x00\x50\x00\x43\x00\x44\x00\x88\x00\x45\x00\x8e\x00\x66\x00\x46\x00\x47\x00\x82\x00\x49\x00\x4a\x00\x94\x00\x6c\x00\x4b\x00\x4c\x00\x97\x00\x4d\x00\x4e\x00\x4f\x00\x43\x00\x44\x00\x03\x00\x45\x00\x6c\x00\x05\x00\x46\x00\x47\x00\x07\x00\x49\x00\x4a\x00\x08\x00\x0d\x00\x4b\x00\x4c\x00\x1a\x00\x4d\x00\x4e\x00\x4f\x00\x0f\x00\x6e\x00\x44\x00\x43\x00\x44\x00\x50\x00\x45\x00\x46\x00\x2f\x00\x46\x00\x47\x00\x4a\x00\x49\x00\x4a\x00\x38\x00\x68\x00\x4b\x00\x4c\x00\x67\x00\x4d\x00\x4e\x00\x4f\x00\x43\x00\x44\x00\x50\x00\x45\x00\x53\x00\x92\x00\x46\x00\x47\x00\x6c\x00\x49\x00\x4a\x00\x6a\x00\x6f\x00\x4b\x00\x4c\x00\x8c\x00\x4d\x00\x4e\x00\x4f\x00\x8b\x00\x95\x00\x94\x00\x0b\x00\x6c\x00\x50\x00\x97\x00\x31\x00\x32\x00\x43\x00\x44\x00\x00\x00\x45\x00\x00\x00\x91\x00\x46\x00\x47\x00\x33\x00\x49\x00\x4a\x00\x34\x00\x00\x00\x4b\x00\x4c\x00\x50\x00\x4d\x00\x4e\x00\x4f\x00\x43\x00\x44\x00\x00\x00\x45\x00\x00\x00\x00\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x43\x00\x44\x00\x00\x00\x45\x00\x00\x00\x50\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x43\x00\x44\x00\x00\x00\x45\x00\x6c\x00\x50\x00\x00\x00\x47\x00\x11\x00\x00\x00\x4a\x00\x00\x00\x00\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x11\x00\x00\x00\x13\x00\x00\x00\x14\x00\x50\x00\x15\x00\x00\x00\x00\x00\x12\x00\x16\x00\x00\x00\x00\x00\x13\x00\x17\x00\x14\x00\x11\x00\x15\x00\x00\x00\x18\x00\x00\x00\x16\x00\x0b\x00\x6a\x00\x50\x00\x17\x00\x31\x00\x32\x00\x00\x00\x13\x00\x18\x00\x14\x00\x00\x00\x15\x00\x00\x00\x00\x00\x33\x00\x16\x00\x00\x00\x66\x00\x00\x00\x17\x00\x00\x00\x00\x00\x00\x00\x00\x00\x18\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x24\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x3b\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x5f\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x54\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x21\x00\x22\x00\x23\x00\x00\x00\x8a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x70\x00\x00\x00\x71\x00\x72\x00\x00\x00\x00\x00\x00\x00\x73\x00\x74\x00\x75\x00\x76\x00\x77\x00\x22\x00\x23\x00\x78\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x70\x00\x00\x00\x00\x00\x72\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\x00\x76\x00\x85\x00\x22\x00\x23\x00\x78\x00\x00\x00\x44\x00\x00\x00\x00\x00\x00\x00\x00\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x43\x00\x44\x00\x00\x00\x00\x00\x00\x00\x00\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x00\x00\x44\x00\x00\x00\x00\x00\x00\x00\x00\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x43\x00\x44\x00\x00\x00\x00\x00\x00\x00\x00\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x4b\x00\x4c\x00\x00\x00\x4d\x00\x4e\x00\x4f\x00\x00\x00\x44\x00\x00\x00\x00\x00\x00\x00\x00\x00\x46\x00\x47\x00\x00\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x3e\x00\x22\x00\x23\x00\x00\x00\x20\x00\x3d\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x3c\x00\x22\x00\x23\x00\x00\x00\x20\x00\x64\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x63\x00\x22\x00\x23\x00\x00\x00\x20\x00\x62\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x61\x00\x22\x00\x23\x00\x00\x00\x20\x00\x60\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x5e\x00\x22\x00\x23\x00\x00\x00\x20\x00\x5d\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x5c\x00\x22\x00\x23\x00\x00\x00\x20\x00\x5b\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x5a\x00\x22\x00\x23\x00\x00\x00\x20\x00\x59\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x58\x00\x22\x00\x23\x00\x00\x00\x20\x00\x57\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x56\x00\x22\x00\x23\x00\x00\x00\x20\x00\x86\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x82\x00\x22\x00\x23\x00\x00\x00\x20\x00\x8f\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x8e\x00\x22\x00\x23\x00\x00\x00\x20\x00\x89\x00\x22\x00\x23\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x92\x00\x22\x00\x23\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 82) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82)
	]

happy_n_terms = 53 :: Int
happy_n_nonterms = 23 :: Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn4
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = (read ( happy_var_1 )) :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn5
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = (read ( happy_var_1 )) :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_3 = happySpecReduce_1  2# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn6
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = (read ( happy_var_1 )) :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happySpecReduce_1  3# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn7
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happySpecReduce_1  4# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn8
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = Id ( happy_var_1 )  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happySpecReduce_3  5# happyReduction_6
happyReduction_6 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_2 of { happy_var_2 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn9
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) , envF = [] , envV = [] , typ = TInt , value = (Entry (value happySubAttrs_2) (reverse (value happySubAttrs_3) ), (tac happySelfAttrs) )  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (0,0)  }; happyConditions = []++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happyReduce 7# 6# happyReduction_7
happyReduction_7 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_4 of { happy_var_4 -> 
	case happyOut14 happy_x_6 of { happy_var_6 -> 
	case happyOut15 happy_x_7 of { happy_var_7 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [FunDecl "function" (value happySubAttrs_2) (length (typList happySubAttrs_4) )]++ (tac happySubAttrs_7) ++[Lbl ((snd (tempMod happySubAttrs_7) )+1)] , tempMod = ( (fst (tempMod happySubAttrs_7) ) , ((snd (tempMod happySubAttrs_7) )+1) ) , envFMod = ( insFun (Fun (value happySubAttrs_2) (value happySubAttrs_6) (typList happySubAttrs_4) ) (envF happySelfAttrs) ) , envVMod = (envV happySelfAttrs) , value = DeclFun (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_6) (value happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ loopLabels = (-1,-1) , typFun = (value happySubAttrs_6) , envF = (envFMod happySelfAttrs) , envV = (unionVar (envV happySubAttrs_4) (resetEnvV (envV happySelfAttrs) ) ) , temp = (temp happySelfAttrs)  }; happyConditions = [(if (searchFun (value happySubAttrs_2) (envF happySelfAttrs) ) then Bad $ "Scope Error at "++(pos happy_var_1 )++": function "++(idToStr (value happySubAttrs_2) )++" already declared" else when (not( (isReturn happySubAttrs_7) )) $ Bad $ "Sintax Error at "++(pos happy_var_1 )++": missing return at end of function" ) ]++happyConditions_2++happyConditions_4++happyConditions_6++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happyReduce 7# 6# happyReduction_8
happyReduction_8 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_4 of { happy_var_4 -> 
	case happyOut15 happy_x_7 of { happy_var_7 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [FunDecl "procedure" (value happySubAttrs_2) (length (typList happySubAttrs_4) )]++ (tac happySubAttrs_7) ++[Lbl ((snd (tempMod happySubAttrs_7) )+1)] , tempMod = ( (fst (tempMod happySubAttrs_7) ) , ((snd (tempMod happySubAttrs_7) )+1) ) , envFMod = (insFun (Fun (value happySubAttrs_2) TVoid (typList happySubAttrs_4) ) (envF happySelfAttrs) ) , envVMod = (envV happySelfAttrs) , value = DeclProc (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ loopLabels = (-1,-1) , typFun = TVoid , envF = (envFMod happySelfAttrs) , envV = (unionVar (envV happySubAttrs_4) (resetEnvV (envV happySelfAttrs) ) ) , temp = (temp happySelfAttrs)  }; happyConditions = [(if (searchFun (value happySubAttrs_2) (envF happySelfAttrs) ) then Bad $ "Scope Error at "++(pos happy_var_1 )++": procedure "++(idToStr (value happySubAttrs_2) )++" already declared" else Ok () ) ]++happyConditions_2++happyConditions_4++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happySpecReduce_3  6# happyReduction_9
happyReduction_9 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , tempMod = (temp happySelfAttrs) , envFMod = (envF happySelfAttrs) , envVMod = (unionVar (createList (value happySubAttrs_2) (value happySubAttrs_3) ) (envV happySelfAttrs) ) , value = DeclVar (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [( case (ctrlDeclVarList (value happySubAttrs_2) (envV happySelfAttrs) ) of { Just a -> Bad $ "Scope Error at "++(pos happy_var_1 )++": variable "++(idToStr a)++" already declared in this block" ; Nothing -> Ok () ; } ) ]++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happyReduce 4# 6# happyReduction_10
happyReduction_10 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	case happyOut23 happy_x_4 of { happy_var_4 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_4) ++ ( tacAssign (value happySubAttrs_2) (addressList happySubAttrs_4) ) , tempMod = (tempMod happySubAttrs_4) , envFMod = (envF happySelfAttrs) , envVMod = (unionVar ( createListMod (value happySubAttrs_2) (typList happySubAttrs_4) ) (envV happySelfAttrs) ) , value = DeclVarInit (value happySubAttrs_2) (value happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( case (ctrlDeclVarList (value happySubAttrs_2) (envV happySelfAttrs) ) of { Just a -> Bad $ "Scope Error at "++(pos happy_var_1 )++": variable "++(idToStr a)++" already declared in this block" ; Nothing -> ( if (not(length (value happySubAttrs_2) ==length (typList happySubAttrs_4) )) then Bad $ "Sintax Error at "++(pos happy_var_1 )++": n.of id and expression not matching" else Ok () ) ; } ) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happyReduce 5# 6# happyReduction_11
happyReduction_11 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	case happyOutTok happy_x_4 of { happy_var_4 -> 
	case happyOut23 happy_x_5 of { happy_var_5 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_5) ++ ( tacAssign (value happySubAttrs_2) (addressList happySubAttrs_5) ) , tempMod = (tempMod happySubAttrs_5) , envFMod = (envF happySelfAttrs) , envVMod = (unionVar ( createList (value happySubAttrs_2) (value happySubAttrs_3) ) (envV happySelfAttrs) ) , value = DeclVarTypeInit (value happySubAttrs_2) (value happySubAttrs_3) (value happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( case (ctrlDeclVarList (value happySubAttrs_2) (envV happySelfAttrs) ) of { Just a -> Bad $ "Scope Error at "++(pos happy_var_1 )++": variable "++(idToStr a)++" already declared in this block" ; Nothing -> ( if (not(length (value happySubAttrs_2) ==length (typList happySubAttrs_5) )) then Bad $ "Sintax Error at "++(pos happy_var_1 )++": n.of id and expression not matching" else ( case ( matchType (value happySubAttrs_3) ( (typList happySubAttrs_5) )) of { Just a -> Bad $ "Type Error at: "++(pos happy_var_4 )++" Cannot use "++(showType (fst a))++" as type "++(showType (snd a))++" in assignment" ; Nothing -> Ok () ; } ) ) ; } ) ]++happyConditions_2++happyConditions_3++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happySpecReduce_3  7# happyReduction_12
happyReduction_12 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++ ( tacAssign (value happySubAttrs_1) (addressList happySubAttrs_3) ) , tempMod = (tempMod happySubAttrs_3) , envFMod = (envF happySelfAttrs) , envVMod = (unionVar ( createListMod (value happySubAttrs_1) (typList happySubAttrs_3) ) (envV happySelfAttrs) ) , value = DeclVarShort (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( case (ctrlDeclVarList (value happySubAttrs_1) (envV happySelfAttrs) ) of { Just a -> Bad $ "Scope Error at "++(pos happy_var_2 )++": variable "++(idToStr a)++" already declared in this block" ; Nothing -> ( if (not(length (value happySubAttrs_1) ==length (typList happySubAttrs_3) )) then Bad $ "Sintax Error at "++(pos happy_var_2 )++": n.of id and expression not matching" else Ok () ) ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happySpecReduce_2  8# happyReduction_13
happyReduction_13 happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typList = (replicate (length (value happySubAttrs_1) ) (value happySubAttrs_2) ) , envV = (createList (value happySubAttrs_1) (value happySubAttrs_2) ) , value = ParamL (value happySubAttrs_1) (value happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_3  8# happyReduction_14
happyReduction_14 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typList = (replicate (length (value happySubAttrs_2) ) (value happySubAttrs_3) ) , envV = (createList (value happySubAttrs_2) (value happySubAttrs_3) ) , value = ParamLPassType (value happySubAttrs_1) (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_1  9# happyReduction_15
happyReduction_15 happy_x_1
	 =  happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = PassValue  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_1  9# happyReduction_16
happyReduction_16 happy_x_1
	 =  happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = PassRef  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happySpecReduce_1  10# happyReduction_17
happyReduction_17 happy_x_1
	 =  happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TInt  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happySpecReduce_1  10# happyReduction_18
happyReduction_18 happy_x_1
	 =  happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TBool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happySpecReduce_1  10# happyReduction_19
happyReduction_19 happy_x_1
	 =  happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TFloat  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_1  10# happyReduction_20
happyReduction_20 happy_x_1
	 =  happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TChar  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  10# happyReduction_21
happyReduction_21 happy_x_1
	 =  happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TString  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happyReduce 4# 10# happyReduction_22
happyReduction_22 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOut14 happy_x_4 of { happy_var_4 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TArray (value happySubAttrs_2) (value happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_2  10# happyReduction_23
happyReduction_23 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = TPointer (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_3  11# happyReduction_24
happyReduction_24 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_2 of { happy_var_2 -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) , tempMod = (tempMod happySubAttrs_2) , isReturn = (isReturn happySubAttrs_2) , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = (BodyBlock (reverse (value happySubAttrs_2) ))  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_1  12# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , tempMod = (tempMod happySubAttrs_1) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StBlock (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  12# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , tempMod = (tempMod happySubAttrs_1) , isReturn = False , envFMod = (envFMod happySubAttrs_1) , envVMod = (envVMod happySubAttrs_1) , value = StSmpl (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_2  12# happyReduction_27
happyReduction_27 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [ Return (address happySubAttrs_2) ] , tempMod = (tempMod happySubAttrs_2) , isReturn = True , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StReturn (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( if ( (err happySubAttrs_2) =="") then ( case (typFun happySelfAttrs) of { TVoid -> ( Bad $ "Sintax Error at "++(pos happy_var_1 )++": Cannot return any value" ) ; _ -> ( when (not( (typ happySubAttrs_2) ==(typFun happySelfAttrs) )) $ Bad $ "Type Error at "++(pos happy_var_1 )++": Cannot use type "++(showType (typ happySubAttrs_2) )++" as type "++(showType (typFun happySelfAttrs) )++" in return argument" ) ; } ) else ( Bad $ (err happySubAttrs_2) ) ) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_3  12# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [CondJ (address happySubAttrs_2) ((snd (tempMod happySubAttrs_3) )+1)] ++ (tac happySubAttrs_3) ++ [Lbl ((snd (tempMod happySubAttrs_3) )+1)] , tempMod = ( (fst (tempMod happySubAttrs_3) ) , ((snd (tempMod happySubAttrs_3) )+1) ) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StIf (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (tempMod happySubAttrs_2)  }; happyConditions = [( if ( (err happySubAttrs_2) =="") then (when (not( (typ happySubAttrs_2) ==TBool)) $ Bad $ "Type Error at "++(pos happy_var_1 )++": Type "++ (showType (typ happySubAttrs_2) ) ++" used as if-condition" ) else ( Bad $ (err happySubAttrs_2) ) ) ]++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happyReduce 5# 12# happyReduction_29
happyReduction_29 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	case happyOut15 happy_x_5 of { happy_var_5 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [CondJ (address happySubAttrs_2) ((snd (tempMod happySubAttrs_5) )+1)] ++ (tac happySubAttrs_3) ++ [UnCondJ ((snd (tempMod happySubAttrs_5) )+2)] ++ [Lbl ((snd (tempMod happySubAttrs_5) )+1)] ++ (tac happySubAttrs_5) ++ [Lbl ((snd (tempMod happySubAttrs_5) )+2)] , tempMod = ( (fst (tempMod happySubAttrs_5) ) , ((snd (tempMod happySubAttrs_5) )+2) ) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StIfElse (value happySubAttrs_2) (value happySubAttrs_3) (value happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (tempMod happySubAttrs_2)  }; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (tempMod happySubAttrs_3)  }; happyConditions = [( if ( (err happySubAttrs_2) =="") then (when (not( (typ happySubAttrs_2) ==TBool)) $ Bad $ "Type Error at "++(pos happy_var_1 )++": Type "++ (showType (typ happySubAttrs_2) ) ++" used as if-condition" ) else ( Bad $ (err happySubAttrs_2) ) ) ]++happyConditions_2++happyConditions_3++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happyReduce 5# 12# happyReduction_30
happyReduction_30 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_4 of { happy_var_4 -> 
	case happyOut15 happy_x_5 of { happy_var_5 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ (tac happySubAttrs_4) ++ [CondJ (address happySubAttrs_4) ((snd (tempMod happySubAttrs_5) )+1)] ++ (tac happySubAttrs_5) ++ [Lbl ((snd (tempMod happySubAttrs_5) )+1)] , tempMod = ( (fst (tempMod happySubAttrs_5) ) , ((snd (tempMod happySubAttrs_5) )+1) ) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StIfStm (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (temp happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envF = (envFMod happySubAttrs_2) , envV = (envVMod happySubAttrs_2) , temp = (tempMod happySubAttrs_2)  }; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envFMod happySubAttrs_2) , envV = (resetEnvV (envVMod happySubAttrs_2) ) , temp = (tempMod happySubAttrs_4)  }; happyConditions = [( if ( (err happySubAttrs_4) =="") then (when (not( (typ happySubAttrs_4) ==TBool)) $ Bad $ "Type Error at "++(pos happy_var_1 )++": Type "++ (showType (typ happySubAttrs_4) ) ++" used as if-condition" ) else ( Bad $ (err happySubAttrs_4) ) ) ]++happyConditions_2++happyConditions_4++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happyReduce 7# 12# happyReduction_31
happyReduction_31 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_4 of { happy_var_4 -> 
	case happyOut15 happy_x_5 of { happy_var_5 -> 
	case happyOut15 happy_x_7 of { happy_var_7 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ (tac happySubAttrs_4) ++ [CondJ (address happySubAttrs_4) ((snd (tempMod happySubAttrs_7) )+1)] ++ (tac happySubAttrs_5) ++ [UnCondJ ((snd (tempMod happySubAttrs_7) )+2)] ++ [Lbl ((snd (tempMod happySubAttrs_7) )+1)] ++ (tac happySubAttrs_7) ++ [Lbl ((snd (tempMod happySubAttrs_7) )+2)] , tempMod = ( (fst (tempMod happySubAttrs_7) ) , ((snd (tempMod happySubAttrs_7) )+2) ) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StIfElseStm (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_5) (value happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (temp happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envF = (envFMod happySubAttrs_2) , envV = (envVMod happySubAttrs_2) , temp = (tempMod happySubAttrs_2)  }; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envFMod happySubAttrs_2) , envV = (resetEnvV (envVMod happySubAttrs_2) ) , temp = (tempMod happySubAttrs_4)  }; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envFMod happySubAttrs_2) , envV = (resetEnvV (envVMod happySubAttrs_2) ) , temp = (tempMod happySubAttrs_5)  }; happyConditions = [( if ( (err happySubAttrs_4) =="") then (when (not( (typ happySubAttrs_4) ==TBool)) $ Bad $ "Type Error at "++(pos happy_var_1 )++": Type "++ (showType (typ happySubAttrs_4) ) ++" used as if-condition" ) else ( Bad $ (err happySubAttrs_4) ) ) ]++happyConditions_2++happyConditions_4++happyConditions_5++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happySpecReduce_3  12# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [Lbl ((snd (tempMod happySubAttrs_3) )+1)] ++ (tac happySubAttrs_2) ++ [CondJ (address happySubAttrs_2) ((snd (tempMod happySubAttrs_3) )+2)] ++ (tac happySubAttrs_3) ++ [UnCondJ ((snd (tempMod happySubAttrs_3) )+1)] ++ [Lbl ((snd (tempMod happySubAttrs_3) )+2)] , tempMod = ( (fst (tempMod happySubAttrs_3) ) , ((snd (tempMod happySubAttrs_3) )+2) ) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StWhile (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ loopLabels = ( ((snd (tempMod happySubAttrs_3) )+1) , ((snd (tempMod happySubAttrs_3) )+2) ) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (resetEnvV (envV happySelfAttrs) ) , temp = (tempMod happySubAttrs_2)  }; happyConditions = [( if ( (err happySubAttrs_2) =="") then (when (not( (typ happySubAttrs_2) ==TBool)) $ Bad $ "Type Error at "++(pos happy_var_1 )++": Type "++ (showType (typ happySubAttrs_2) ) ++" used as for-condition" ) else ( Bad $ (err happySubAttrs_2) ) ) ]++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happySpecReduce_1  12# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , tempMod = (tempMod happySubAttrs_1) , isReturn = False , envFMod = (envFMod happySubAttrs_1) , envVMod = (envVMod happySubAttrs_1) , value = StDecl (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happySpecReduce_1  12# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [UnCondJ (snd (loopLabels happySelfAttrs) )] , tempMod = (temp happySelfAttrs) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StBreak  }; happyConditions = [(when ( (fst (loopLabels happySelfAttrs) ) ==(-1) ) $ Bad $ "Sintax Error at "++(pos happy_var_1 )++": Break is not in a loop" ) ] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_1  12# happyReduction_35
happyReduction_35 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [UnCondJ (fst (loopLabels happySelfAttrs) )] , tempMod = (temp happySelfAttrs) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StContinue  }; happyConditions = [(when ( (fst (loopLabels happySelfAttrs) ) ==(-1) ) $ Bad $ "Sintax Error at "++(pos happy_var_1 )++": Continue is not in a loop" ) ] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happyReduce 4# 12# happyReduction_36
happyReduction_36 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++ [FunCall "procedure" "" (Id "write") [ (address happySubAttrs_3) ]] , tempMod = (tempMod happySubAttrs_3) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StWrite (value happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( if (err happySubAttrs_3) =="" then when ( (typ happySubAttrs_3) ==TBool ) $ Bad $ "Type Error at "++(pos happy_var_2 )++": Cannot use bool as write-argument" else Bad $ (err happySubAttrs_3) ) ]++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happyReduce 4# 12# happyReduction_37
happyReduction_37 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++ [FunCall "procedure" "" (Id "read") [ (address happySubAttrs_3) ]] , tempMod = (tempMod happySubAttrs_3) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StRead (value happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( if (err happySubAttrs_3) =="" then when ( (typ happySubAttrs_3) ==TBool ) $ Bad $ "Type Error at "++(pos happy_var_2 )++": Cannot use bool as read-argument" else Bad $ (err happySubAttrs_3) ) ]++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_1  13# happyReduction_38
happyReduction_38 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , tempMod = (tempMod happySubAttrs_1) , checkForIncr = False , envFMod = (envFMod happySubAttrs_1) , envVMod = (envVMod happySubAttrs_1) , value = StShortVarDecl (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_1  13# happyReduction_39
happyReduction_39 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , tempMod = (tempMod happySubAttrs_1) , checkForIncr = True , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StExp (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( if ( (err happySubAttrs_1) =="") then ( if ( (address happySubAttrs_1) =="") then Ok () else Bad $ "Sintax Error : Right expression not assigned") else ( Bad $ (err happySubAttrs_1) ) ) ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  13# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [NulOp (address happySubAttrs_1) (address happySubAttrs_3) ] , tempMod = (tempMod happySubAttrs_3) , checkForIncr = True , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = StAsgn (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [( if ( ( (err happySubAttrs_1) =="") && ( (err happySubAttrs_3) =="" ) ) then (if (( (typ happySubAttrs_1) ==TFloat) && ( (typ happySubAttrs_3) ==TInt)) then (Ok ()) else when (not( (typ happySubAttrs_1) ==(typ happySubAttrs_3) )) $ Bad $ "Type Error at "++(pos happy_var_2 )++": Cannot use "++(showType (typ happySubAttrs_3) )++" as type "++(showType (typ happySubAttrs_1) )++" in assignment" ) else (if not( (err happySubAttrs_1) =="") then Bad $ (err happySubAttrs_1) else Bad $ (err happySubAttrs_3) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_1  14# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , address = (idToStr (value happySubAttrs_1) ) , tempMod = (temp happySelfAttrs) , err = if (not(searchVar (value happySubAttrs_1) (envV happySelfAttrs) )) then "Scope Error : Variable "++(idToStr (value happySubAttrs_1) )++" not in scope" else "" , typ = getTypeVar (extrVar (value happySubAttrs_1) (envV happySelfAttrs) ) , value = ExpId (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [( if (not(searchVar (value happySubAttrs_1) (envV happySelfAttrs) )) then ( Bad $ "Scope Error : Variable "++(idToStr (value happySubAttrs_1) )++" not in scope") else ( Ok ()) ) ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happyReduce 4# 14# happyReduction_42
happyReduction_42 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [ BinOp "*" ("t"++(show ((fst (tempMod happySubAttrs_3) ) +1))) (address happySubAttrs_3) ( show (mem (typ happySelfAttrs) ) ) ] , address = (address happySubAttrs_1) ++"[t"++(show ((fst (tempMod happySubAttrs_3) ) +1))++"]" , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 2), (snd (tempMod happySubAttrs_3) ) ) , err = if ( ( (err happySubAttrs_1) =="") && ( (err happySubAttrs_3) =="") ) then (case (typ happySubAttrs_1) of { (TArray _ _ ) -> (if (not( (typ happySubAttrs_3) ==TInt)) then "Type Error at "++(pos happy_var_2 )++": Type int expected, founded " ++ showType ( (typ happySubAttrs_3) ) else "" ) ; otherwise -> "Type Error at "++(pos happy_var_2 )++": Type array expected, founded " ++ showType ( (typ happySubAttrs_1) ) ; } ) else (if (err happySubAttrs_1) =="" then (err happySubAttrs_3) else (err happySubAttrs_1) ) , typ = getTypeArr (typ happySubAttrs_1) , value = ExpArr (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( if ( ( (err happySubAttrs_1) =="") && ( (err happySubAttrs_3) =="") ) then case (typ happySubAttrs_1) of { (TArray _ _ ) -> (if (not( (typ happySubAttrs_3) ==TInt)) then Bad $ "Type Error at "++(pos happy_var_2 )++": Type int expected, founded " ++ showType ( (typ happySubAttrs_3) ) else Ok () ) ; otherwise -> ( Bad $ "Type Error at "++(pos happy_var_2 )++": Type array expected, founded " ++ showType ( (typ happySubAttrs_1) ) ) ; } else (if (err happySubAttrs_1) =="" then Bad $ (err happySubAttrs_3) else Bad $ (err happySubAttrs_1) )) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happySpecReduce_2  14# happyReduction_43
happyReduction_43 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) , address = "*"++(show (address happySubAttrs_2) ) , tempMod = ( ((fst (tempMod happySubAttrs_2) ) + 1), (snd (tempMod happySubAttrs_2) ) ) , err = ( if (err happySubAttrs_2) =="" then if (not(isTyipePnt (typ happySubAttrs_2) )) then "Type Error at "++(pos happy_var_1 )++": Type pointer expected, founded " ++ showType ( (typ happySubAttrs_2) ) else "" else (err happySubAttrs_2) ) , typ = getTypePnt (typ happySubAttrs_2) , value = ExpDeref (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [( if (err happySubAttrs_2) =="" then if not(isTyipePnt (typ happySubAttrs_2) ) then Bad $ "Type Error at "++(pos happy_var_1 )++": Type pointer expected, founded " ++ showType ( (typ happySubAttrs_2) ) else Ok () else Bad $ (err happySubAttrs_2) ) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_3  15# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "+" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = if (( (typ happySubAttrs_1) ==TInt) && ( (typ happySubAttrs_3) ==TInt)) then TInt else TFloat , err = (checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , value = ExpAdd (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_3  15# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "-" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = if (( (typ happySubAttrs_1) ==TInt) && ( (typ happySubAttrs_3) ==TInt)) then TInt else TFloat , err = (checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , value = ExpSub (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happySpecReduce_3  15# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "*" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = if (( (typ happySubAttrs_1) ==TInt) && ( (typ happySubAttrs_3) ==TInt)) then TInt else TFloat , err = (checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , value = ExpMul (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happySpecReduce_3  15# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "/" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = if (( (typ happySubAttrs_1) ==TInt) && ( (typ happySubAttrs_3) ==TInt)) then TInt else TFloat , err = (checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , value = ExpDiv (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_3  15# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "%" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = if (( (typ happySubAttrs_1) ==TInt) && ( (typ happySubAttrs_3) ==TInt)) then TInt else TFloat , err = (checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , value = ExpMod (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkMathOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_3  15# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp " ==" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpEq (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_3  15# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "! =" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpNeq (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_3  15# happyReduction_51
happyReduction_51 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "<" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpLt (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_3  15# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "< =" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpLtE (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_3  15# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp ">" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpGt (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happySpecReduce_3  15# happyReduction_54
happyReduction_54 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "> =" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpGtE (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkRelOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_3  15# happyReduction_55
happyReduction_55 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "&&" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkBoolOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpAnd (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkBoolOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_56 = happySpecReduce_3  15# happyReduction_56
happyReduction_56 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ [(BinOp "||" (address happySelfAttrs) (address happySubAttrs_1) (address happySubAttrs_3) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , typ = TBool , err = checkBoolOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , value = ExpOr (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = [(case checkBoolOp (typ happySubAttrs_1) (typ happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_57 = happySpecReduce_2  15# happyReduction_57
happyReduction_57 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [(UnOp "!" (address happySelfAttrs) (address happySubAttrs_2) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_2) ) + 1), (snd (tempMod happySubAttrs_2) ) ) , typ = TBool , err = if ( (err happySubAttrs_2) =="") then (if (not( (typ happySubAttrs_2) ==TBool)) then "Type Error at "++(pos happy_var_1 )++": Expected boolean type" else "" ) else (err happySubAttrs_2) , value = ExpNot (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envV = (envV happySelfAttrs) , envF = (envF happySelfAttrs)  }; happyConditions = [( if ( (err happySubAttrs_2) =="") then (if (not( (typ happySubAttrs_2) ==TBool)) then Bad $ "Type Error at "++(pos happy_var_1 )++": Expected boolean type" else Ok () ) else Bad $ (err happySubAttrs_2) ) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_58 = happySpecReduce_2  15# happyReduction_58
happyReduction_58 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [(UnOp "-" (address happySelfAttrs) (address happySubAttrs_2) )] , address = "t"++ (show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_2) ) + 1), (snd (tempMod happySubAttrs_2) ) ) , typ = (typ happySubAttrs_2) , err = if ( (err happySubAttrs_2) =="") then (if (not( (typ happySubAttrs_2) ==TInt || (typ happySubAttrs_2) ==TFloat)) then "Type Error at "++(pos happy_var_1 )++": Expected numeric type (int or float)" else "" ) else (err happySubAttrs_2) , value = ExpNeg (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envV = (envV happySelfAttrs) , envF = (envF happySelfAttrs)  }; happyConditions = [( if ( (err happySubAttrs_2) =="") then (if (not( (typ happySubAttrs_2) ==TInt || (typ happySubAttrs_2) ==TFloat)) then Bad $ "Type Error at "++(pos happy_var_1 )++": Expected numeric type (int or float)" else Ok () ) else Bad $ (err happySubAttrs_2) ) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_59 = happySpecReduce_1  15# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOut20 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , address = (showVal (value happySubAttrs_1) ) , tempMod = (temp happySelfAttrs) , err = "" , typ = (typ happySubAttrs_1) , value = ExpVal (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envV = (envV happySelfAttrs) , envF = (envF happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_60 = happySpecReduce_1  15# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , address = (address happySubAttrs_1) , tempMod = (tempMod happySubAttrs_1) , err = (err happySubAttrs_1) , typ = (typ happySubAttrs_1) , value = ExpLef (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_61 = happySpecReduce_3  15# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = if ( (typ happySelfAttrs) ==TVoid) then [FunCall "procedure" "" (value happySubAttrs_1) []] else [FunCall "function" (address happySelfAttrs) (value happySubAttrs_1) []] , address = if ( (typ happySelfAttrs) ==TVoid) then ("") else ("t"++(show (fst (tempMod happySelfAttrs) ) )) , tempMod = if ( (typ happySelfAttrs) ==TVoid) then ( (temp happySelfAttrs) ) else ( ((fst (temp happySelfAttrs) ) + 1), (snd (temp happySelfAttrs) ) ) , err = checkErrProc (value happySubAttrs_1) (envF happySelfAttrs) [] happy_var_2 , typ = getTypeFun (extrFun (value happySubAttrs_1) (envF happySelfAttrs) ) , value = ExpFuncEmpty (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [(case checkErrProc (value happySubAttrs_1) (envF happySelfAttrs) [] happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_62 = happyReduce 4# 15# happyReduction_62
happyReduction_62 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = if ( (typ happySelfAttrs) ==TVoid) then (tac happySubAttrs_3) ++ [FunCall "procedure" "" (value happySubAttrs_1) (addressList happySubAttrs_3) ] else (tac happySubAttrs_3) ++ [FunCall "function" (address happySelfAttrs) (value happySubAttrs_1) (addressList happySubAttrs_3) ] , address = if ( (typ happySelfAttrs) ==TVoid) then ("") else ("t"++(show (fst (tempMod happySelfAttrs) ) )) , tempMod = if ( (typ happySelfAttrs) ==TVoid) then ( (tempMod happySubAttrs_3) ) else ( ((fst (tempMod happySubAttrs_3) ) + 1), (snd (tempMod happySubAttrs_3) ) ) , err = checkErrFun (err happySubAttrs_3) (value happySubAttrs_1) (envF happySelfAttrs) (typList happySubAttrs_3) happy_var_2 , typ = getTypeFun (extrFun (value happySubAttrs_1) (envF happySelfAttrs) ) , value = ExpFunc (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = [(case checkErrFun (err happySubAttrs_3) (value happySubAttrs_1) (envF happySelfAttrs) (typList happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad $ x ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_63 = happySpecReduce_2  15# happyReduction_63
happyReduction_63 happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [(NulOp (address happySelfAttrs) ("&"++ (address happySubAttrs_2) ))] , address = "t"++(show (fst (tempMod happySelfAttrs) ) ) , tempMod = ( ((fst (tempMod happySubAttrs_2) ) + 1), (snd (tempMod happySubAttrs_2) ) ) , typ = TPointer (typ happySubAttrs_2) , err = (err happySubAttrs_2) , value = ExpRef (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_64 = happySpecReduce_3  15# happyReduction_64
happyReduction_64 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) , address = (address happySubAttrs_2) , tempMod = (tempMod happySubAttrs_2) , err = (err happySubAttrs_2) , typ = (typ happySubAttrs_2) , value = ExpPar (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_65 = happySpecReduce_1  16# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typ = TInt , value = Int (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_66 = happySpecReduce_1  16# happyReduction_66
happyReduction_66 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typ = TFloat , value = Float (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_67 = happySpecReduce_1  16# happyReduction_67
happyReduction_67 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typ = TChar , value = Char (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_68 = happySpecReduce_1  16# happyReduction_68
happyReduction_68 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typ = TString , value = String (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_69 = happySpecReduce_1  16# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typ = TBool , value = Bool (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_70 = happySpecReduce_1  17# happyReduction_70
happyReduction_70 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = Boolean_true  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_71 = happySpecReduce_1  17# happyReduction_71
happyReduction_71 happy_x_1
	 =  happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = Boolean_false  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_72 = happySpecReduce_1  18# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ idList = [ (value happySubAttrs_1) ] , value = (:[]) (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_73 = happySpecReduce_3  18# happyReduction_73
happyReduction_73 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ idList = ( (value happySubAttrs_1) : (idList happySubAttrs_3) ) , value = (:) (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [( when (elem (value happySubAttrs_1) (value happySubAttrs_3) ) $ Bad $ "Sintax Error at "++(pos happy_var_2 )++": Duplicate identificator " ++ (idToStr (value happySubAttrs_1) ) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_74 = happySpecReduce_1  19# happyReduction_74
happyReduction_74 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , addressList = [ (address happySubAttrs_1) ] , tempMod = (tempMod happySubAttrs_1) , err = (err happySubAttrs_1) , typList = [ (typ happySubAttrs_1) ] , value = (:[]) (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_75 = happySpecReduce_3  19# happyReduction_75
happyReduction_75 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) , addressList = (address happySubAttrs_1) : (addressList happySubAttrs_3) , tempMod = (tempMod happySubAttrs_3) , err = (err happySubAttrs_1) , typList = ( (typ happySubAttrs_1) : (typList happySubAttrs_3) ) , value = (:) (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (tempMod happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_76 = happySpecReduce_0  20# happyReduction_76
happyReduction_76  =  happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , tempMod = (temp happySelfAttrs) , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_77 = happySpecReduce_2  20# happyReduction_77
happyReduction_77 happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOut10 happy_x_2 of { happy_var_2 -> 
	happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_2) , tempMod = (tempMod happySubAttrs_2) , envFMod = (envFMod happySubAttrs_2) , envVMod = (envVMod happySubAttrs_2) , value = flip (:) (value happySubAttrs_1) (value happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envF = (envFMod happySubAttrs_1) , envV = (envVMod happySubAttrs_1) , temp = (tempMod happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_78 = happySpecReduce_0  21# happyReduction_78
happyReduction_78  =  happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typList = [] , envV = [] , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_79 = happySpecReduce_1  21# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typList = (typList happySubAttrs_1) , envV = (envV happySubAttrs_1) , value = (:[]) (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_80 = happySpecReduce_3  21# happyReduction_80
happyReduction_80 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ typList = ( (typList happySubAttrs_1) ++ (typList happySubAttrs_3) ) , envV = (envV happySubAttrs_1) ++ (envV happySubAttrs_3) , value = (:) (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [( case (checkVarParamList (envV happySubAttrs_1) (envV happySubAttrs_3) ) of { Just a -> ( Bad $ "Sintax Error at "++(pos happy_var_2 )++": Duplicate identificator "++ idToStr a ) ; Nothing -> ( Ok () ) ; } ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_81 = happySpecReduce_0  22# happyReduction_81
happyReduction_81  =  happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , tempMod = (temp happySelfAttrs) , isReturn = False , envFMod = (envF happySelfAttrs) , envVMod = (envV happySelfAttrs) , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_82 = happySpecReduce_2  22# happyReduction_82
happyReduction_82 happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_2 of { happy_var_2 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_2) , tempMod = (tempMod happySubAttrs_2) , isReturn = (isReturn happySubAttrs_2) , envFMod = (envFMod happySubAttrs_2) , envVMod = (envVMod happySubAttrs_2) , value = flip (:) (value happySubAttrs_1) (value happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envF happySelfAttrs) , envV = (envV happySelfAttrs) , temp = (temp happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ loopLabels = (loopLabels happySelfAttrs) , typFun = (typFun happySelfAttrs) , envF = (envFMod happySubAttrs_1) , envV = (envVMod happySubAttrs_1) , temp = (tempMod happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyNewToken action sts stk [] =
	happyDoAction 52# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (TS _ 37) -> cont 37#;
	PT _ (TS _ 38) -> cont 38#;
	PT _ (TS _ 39) -> cont 39#;
	PT _ (TS _ 40) -> cont 40#;
	PT _ (TS _ 41) -> cont 41#;
	PT _ (TS _ 42) -> cont 42#;
	PT _ (TS _ 43) -> cont 43#;
	PT _ (TS _ 44) -> cont 44#;
	PT _ (TS _ 45) -> cont 45#;
	PT _ (TS _ 46) -> cont 46#;
	PT _ (TI happy_dollar_dollar) -> cont 47#;
	PT _ (TD happy_dollar_dollar) -> cont 48#;
	PT _ (TC happy_dollar_dollar) -> cont 49#;
	PT _ (TL happy_dollar_dollar) -> cont 50#;
	PT _ (T_Id happy_dollar_dollar) -> cont 51#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => ([(Token)], [String]) -> Err a
happyError' = (\(tokens, _) -> happyError tokens)
do_pStart tks = happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut9 x))

pStart toks = do { f <- do_pStart toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (value attrs) }}

happySeq = happyDontSeq

data MyAttributes a = HappyAttributes {value :: a, envV :: [ElmVar], envF :: [ElmFun], envVMod :: [ElmVar], envFMod :: [ElmFun], idList :: [Id], typ :: Type, typList :: [Type], typFun :: Type, isReturn :: Bool, err :: String, loopLabels :: (Int, Int), checkForIncr :: Bool, tac :: [TacOp], address :: String, addressList :: [String], temp :: (Int, Int), tempMod :: (Int, Int)}
happyEmptyAttrs = HappyAttributes {value = error "invalid reference to attribute 'value'", envV = error "invalid reference to attribute 'envV'", envF = error "invalid reference to attribute 'envF'", envVMod = error "invalid reference to attribute 'envVMod'", envFMod = error "invalid reference to attribute 'envFMod'", idList = error "invalid reference to attribute 'idList'", typ = error "invalid reference to attribute 'typ'", typList = error "invalid reference to attribute 'typList'", typFun = error "invalid reference to attribute 'typFun'", isReturn = error "invalid reference to attribute 'isReturn'", err = error "invalid reference to attribute 'err'", loopLabels = error "invalid reference to attribute 'loopLabels'", checkForIncr = error "invalid reference to attribute 'checkForIncr'", tac = error "invalid reference to attribute 'tac'", address = error "invalid reference to attribute 'address'", addressList = error "invalid reference to attribute 'addressList'", temp = error "invalid reference to attribute 'temp'", tempMod = error "invalid reference to attribute 'tempMod'"}

-------------------------------------------------------------------------------------------------------------------------------
---------------------------- FUNZIONI AUSILIARIE PER INDIVIDUAZIONE E STAMPA DEGLI ERRORI -------------------------------------
-------------------------------------------------------------------------------------------------------------------------------


-- controlli di tipo sulle operazioni matematiche
checkMathOp t1 t2 e1 e2 p = if ( (e1 == "") && (e2 == "")  ) 
                 then ( if ((t1 == TInt || t1 == TFloat) && (t2 == TInt || t2 == TFloat))
                    then ""
                    else "Type Error at "++(pos p)++": Math operator expected numeric type (int or float)"
                    )
                 else if  e1/=""
                    then e1
                    else e2


-- controlli di tipo sulle operazioni relazionali
checkRelOp t1 t2 e1 e2 p = if ( (e1 == "") && (e2 == "")  ) 
                then  ( if (t1 == t2) 
                    then ""
                    else if ((t1 == TInt || t1 == TFloat) && (t2 == TInt || t2 == TFloat))
                        then ""
                        else "Type Error at "++(pos p)++": Couldn't match type "++(showType t1)++" with type "++ (showType t2)
                    )
                else if  e1/=""
                    then e1
                    else e2
            

-- controlli di tipo sulle operazioni booleane
checkBoolOp t1 t2 e1 e2 p  = if ( (e1 == "") && (e2 == "")  ) 
                then    (if (t2 == t1)
                    then    if (t1/=TBool) 
                        then "Type Error at "++(pos p)++": Expected boolean type" 
                        else ""
                    else "Type Error at "++(pos p)++": Couldn't match type "++(showType t1)++" with type "++ (showType t2)
                    )
                else  if  e1/=""
                    then e1
                    else e2


-- controlli sulle chiamate di funzioni e procedure (visibilità e match dei parametri)
checkErrProc id envF tl p  = if (not(searchFun id envF)) 
                    then "Scope Error at "++(pos p)++": Procedure  "++(idToStr id)++" not in scope"
                    else checkNParamFun id envF tl p  


checkErrFun e id envF tl p  = if (e=="") 
                then if not(searchFun id envF) 
                    then  "Scope Error at "++(pos p)++": Function  "++(idToStr id)++" not in scope"
                    else checkNParamFun id envF tl p  
                else e

checkNParamFun id envF tl p  =  if ( (length (getTypeListFun (extrFun id envF))) /= (length tl)  ) 
                then "Sintax Error at "++(pos p)++": Wrong n.of arguments in call of "++(idToStr id)++", expected: "++(show (length (getTypeListFun (extrFun id envF))))
                else ( case ( matchTypeList (getTypeListFun (extrFun id envF)) tl ) of {
                        Just a  -> "Type Error at "++(pos p)++": Wrong argument type, couldn't match "++(showType (fst a))++" with "++(showType (snd a))++" in function "++(idToStr id);
                        Nothing -> "";
                        } )

matchTypeList [] [] = Nothing
matchTypeList (x:xs) (y:ys) | x/=y = Just (x,y)
                            | otherwise = matchTypeList xs ys
                
matchType _ [] = Nothing
matchType x (y:ys) | x/=y = Just (x,y)
                   | otherwise = matchType x ys


-- costante moltiplicativa per l'allocazione di array (tac)
mem typ = case typ of {
        TInt -> 4;
        TFloat -> 8;
        TChar -> 2;
        TString -> 32;
        TBool -> 1;
        (TPointer _) -> 4;
        (TArray d t) -> d * (mem t);
        }


-- controlla che non ci siano variabili doppie tra parametri differenti in una definizione di funzione(procedura)
checkVarParamList [] ys = Nothing
checkVarParamList (x@(Var a _ _):xs) ys | (searchVar a ys) =  Just a
                    | otherwise = (checkVarParamList xs ys)
        

-- posizione del token 
pos tok = tokenPos [tok]

showType (TInt) =   "int"
showType (TFloat) = "float"
showType (TChar) =  "char"
showType (TString) = "string"
showType (TBool) =  "boolean"
showType (TVoid) = "void"
showType (TArray n t) = "array["++(show n)++"] "++showType t
showType (TPointer t) = "pointer -> "++showType t

 
showVal (Int i) = show i
showVal (Float f) = show f
showVal (Char c)= "'"++(c:"'")
showVal (String s)= "\""++s++"\""
showVal (Bool Boolean_true)= "true"
showVal (Bool Boolean_false)= "false"




returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "Syntax Error: error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 9 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "/tmp/ghcb5f8_0/ghc_2.h" #-}




























































































































































{-# LINE 9 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+#  i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 180 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+#  nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+#  nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
