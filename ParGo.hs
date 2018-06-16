{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGo where
import AbsGo
import LexGo
import ErrM
import Control.Monad
import Env
import TAC
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: t24 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: t25 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: t26 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: t27 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> t27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xcd\x00\xb5\x00\x00\x00\xae\x00\xab\x00\x00\x00\x00\x00\xfd\xff\x00\x00\xab\x00\xab\x00\xde\x00\x84\x01\xdd\x00\xd8\xff\xce\x00\xa9\x01\x84\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x89\x00\x00\x00\xc2\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd6\x00\x00\x00\x6c\x01\x00\x00\xc1\x00\x00\x00\x84\x00\xfb\xff\x84\x00\x84\x00\x84\x00\x00\x00\xca\x00\xc6\x00\xc3\x00\xc0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\x00\x7f\x00\xb9\x00\xa9\x01\xb3\x00\x00\x00\x00\x00\xa2\x01\x00\x00\xd8\xff\x8f\x01\x00\x00\xb2\x00\xb1\x00\xb0\x00\xaf\x00\x00\x00\x00\x00\x57\x01\x00\x00\x9a\x00\x90\x02\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x84\x00\x79\x00\x8f\x01\x00\x00\xa7\x00\x00\x00\x7d\x02\x6a\x02\x6a\x02\x6a\x02\x6a\x02\x6a\x02\x00\x00\x7b\x00\x00\x00\x7b\x00\x00\x00\x57\x02\x00\x00\x44\x02\x37\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\x00\x78\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x3a\x00\x7f\x01\xf3\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9b\x00\x00\x00\x00\x00\x72\x00\x84\x00\x84\x00\x84\x00\x3d\x00\xa0\x00\x9e\x00\x97\x00\x96\x00\x00\x00\x84\x00\x84\x00\x84\x00\x84\x00\x77\x00\x7f\x01\x22\x01\x22\x01\x00\x00\x8a\x00\x6d\x00\x84\x00\x84\x00\x7f\x01\x00\x00\x84\x00\x84\x00\x00\x00\x71\x00\x3d\x00\x0f\x01\xfa\x00\xe7\x00\xd2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x56\x00\xbf\x00\x7f\x01\x84\x00\x00\x00\x56\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x7e\x00\x00\x00\x00\x00\x00\x00\x82\x00\x6f\x00\x00\x00\x70\x00\x00\x00\x4d\x00\x11\x00\x00\x00\x75\x00\x00\x00\x3a\x01\x00\x00\x6e\x00\xb0\x02\x73\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd9\x03\x20\x00\xce\x03\xc3\x03\xb8\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa5\x02\x06\x00\x00\x00\x67\x00\x00\x00\x00\x00\x00\x00\x65\x00\x00\x00\x42\x00\x62\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xad\x03\xa2\x03\x97\x03\x8c\x03\x81\x03\x76\x03\x91\x00\x6b\x03\x60\x03\x55\x03\x4a\x03\x3f\x03\x34\x03\x29\x03\x1e\x03\x4a\x00\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x52\x00\x51\x00\x00\x00\x19\x00\x00\x00\x00\x00\x00\x00\x34\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4b\x00\xf2\x01\x13\x03\x08\x03\x1f\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfd\x02\xf2\x02\xe7\x02\xdc\x02\x00\x00\x00\x00\x33\x00\x30\x00\x00\x00\x00\x00\x00\x00\x0e\x00\xd1\x02\x00\x00\x00\x00\xc6\x02\xbb\x02\x00\x00\x00\x00\x0a\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x22\x00\x00\x00\x00\x00\xda\x01\x00\x00\xfe\xff\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\xfe\xff\x00\x00\x00\x00\xad\xff\xfa\xff\xcc\xff\xac\xff\x00\x00\x00\x00\xab\xff\x00\x00\x00\x00\xa9\xff\xcb\xff\x00\x00\x00\x00\x00\x00\xf5\xff\xf3\xff\xf4\xff\xf6\xff\xf2\xff\xf7\xff\x00\x00\xaa\xff\x00\x00\xd4\xff\xd3\xff\xd2\xff\xd1\xff\xcf\xff\xd0\xff\xaf\xff\xdb\xff\xda\xff\xca\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\xff\x00\x00\x00\x00\x00\x00\x00\x00\xf9\xff\xfd\xff\xfc\xff\xfb\xff\xf0\xff\x00\x00\x00\x00\xa8\xff\x00\x00\x00\x00\xee\xff\xef\xff\x00\x00\xc5\xff\xa9\xff\x00\x00\xc9\xff\x00\x00\x00\x00\x00\x00\x00\x00\xdf\xff\xcd\xff\x00\x00\xcf\xff\xde\xff\xeb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf1\xff\x00\x00\xdd\xff\xec\xff\xe5\xff\xe6\xff\xea\xff\xe7\xff\xe8\xff\xe1\xff\xe3\xff\xae\xff\xe4\xff\xe2\xff\xed\xff\xe0\xff\xe9\xff\x00\x00\xd9\xff\xd6\xff\xd7\xff\xd8\xff\xd5\xff\xc4\xff\xa7\xff\x00\x00\x00\x00\xc7\xff\xa6\xff\xc8\xff\xce\xff\xdc\xff\x00\x00\xcf\xff\xb1\xff\xda\xff\xc2\xff\xb2\xff\xc1\xff\xa5\xff\xc0\xff\x00\x00\xba\xff\xb9\xff\x00\x00\xa4\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc3\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb8\xff\x00\x00\xb1\xff\xa3\xff\x00\x00\x00\x00\x00\x00\x00\x00\xb0\xff\xc6\xff\x00\x00\x00\x00\xbd\xff\xbf\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb3\xff\xb6\xff\xb5\xff\xb4\xff\xb7\xff\x00\x00\x00\x00\xbc\xff\xa4\xff\xbe\xff\x00\x00\xbb\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x29\x00\x01\x00\x08\x00\x11\x00\x04\x00\x2e\x00\x06\x00\x15\x00\x08\x00\x04\x00\x04\x00\x0b\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x3c\x00\x04\x00\x08\x00\x09\x00\x0a\x00\x18\x00\x14\x00\x14\x00\x1b\x00\x1c\x00\x21\x00\x1e\x00\x12\x00\x20\x00\x21\x00\x22\x00\x04\x00\x14\x00\x25\x00\x26\x00\x27\x00\x28\x00\x0a\x00\x2a\x00\x2f\x00\x2c\x00\x2d\x00\x16\x00\x2f\x00\x0f\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x3c\x00\x37\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x01\x00\x0f\x00\x06\x00\x04\x00\x0f\x00\x06\x00\x0a\x00\x08\x00\x04\x00\x0d\x00\x0b\x00\x07\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x0e\x00\x04\x00\x08\x00\x09\x00\x0a\x00\x18\x00\x14\x00\x15\x00\x1b\x00\x1c\x00\x0f\x00\x1e\x00\x12\x00\x20\x00\x21\x00\x22\x00\x0f\x00\x0f\x00\x25\x00\x26\x00\x27\x00\x28\x00\x06\x00\x2a\x00\x06\x00\x2c\x00\x2d\x00\x06\x00\x2f\x00\x06\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x06\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x01\x00\x06\x00\x0c\x00\x04\x00\x03\x00\x06\x00\x07\x00\x08\x00\x13\x00\x08\x00\x0b\x00\x01\x00\x04\x00\x0c\x00\x04\x00\x0b\x00\x06\x00\x35\x00\x08\x00\x20\x00\x1d\x00\x0b\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x1e\x00\x0e\x00\x08\x00\x09\x00\x0a\x00\x06\x00\x06\x00\x25\x00\x26\x00\x27\x00\x28\x00\x1e\x00\x12\x00\x06\x00\x2c\x00\x06\x00\x35\x00\x0d\x00\x25\x00\x26\x00\x27\x00\x28\x00\x35\x00\x07\x00\x15\x00\x2c\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x07\x00\x07\x00\x07\x00\x07\x00\x07\x00\x3c\x00\x38\x00\x39\x00\x3a\x00\x3b\x00\x3c\x00\x02\x00\x03\x00\x0a\x00\x05\x00\x3c\x00\x06\x00\x08\x00\x09\x00\x06\x00\x0b\x00\x0c\x00\x06\x00\x0e\x00\x0f\x00\x10\x00\x06\x00\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\x15\x00\x05\x00\x16\x00\x07\x00\x08\x00\x09\x00\x06\x00\x0b\x00\x0c\x00\x11\x00\x38\x00\x0f\x00\x10\x00\x06\x00\x12\x00\x13\x00\x14\x00\x3c\x00\x0a\x00\x02\x00\x03\x00\x3d\x00\x05\x00\x38\x00\x07\x00\x08\x00\x09\x00\x24\x00\x0b\x00\x0c\x00\xff\xff\x36\x00\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\x36\x00\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\xff\xff\xff\xff\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\x36\x00\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\x36\x00\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\xff\xff\xff\xff\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\x04\x00\x08\x00\x09\x00\x07\x00\x0b\x00\x0c\x00\xff\xff\x36\x00\x0f\x00\x10\x00\x0e\x00\x12\x00\x13\x00\x14\x00\xff\xff\x16\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x35\x00\x36\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\x07\x00\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\xff\xff\x36\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\x08\x00\x36\x00\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\xff\xff\x11\x00\xff\xff\x08\x00\xff\xff\x15\x00\xff\xff\x17\x00\xff\xff\xff\xff\x1a\x00\xff\xff\xff\xff\xff\xff\x36\x00\x1f\x00\x15\x00\xff\xff\x17\x00\x23\x00\xff\xff\x1a\x00\x08\x00\xff\xff\xff\xff\xff\xff\x1f\x00\x2b\x00\xff\xff\x08\x00\x23\x00\xff\xff\x30\x00\x36\x00\xff\xff\x15\x00\xff\xff\x17\x00\x2b\x00\xff\xff\x1a\x00\xff\xff\x15\x00\x30\x00\x17\x00\x1f\x00\xff\xff\x1a\x00\xff\xff\x23\x00\xff\xff\xff\xff\x1f\x00\xff\xff\xff\xff\xff\xff\x23\x00\x2b\x00\xff\xff\xff\xff\xff\xff\xff\xff\x30\x00\xff\xff\x2b\x00\xff\xff\xff\xff\xff\xff\xff\xff\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\xff\xff\x0d\x00\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\x14\x00\xff\xff\xff\xff\x17\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\xff\xff\x0d\x00\xff\xff\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\x14\x00\xff\xff\xff\xff\x17\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\x0f\x00\x10\x00\x11\x00\xff\xff\xff\xff\x14\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\x0f\x00\x10\x00\x11\x00\xff\xff\xff\xff\x14\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\x0f\x00\x10\x00\x11\x00\x02\x00\x03\x00\x14\x00\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x02\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\x0b\x00\x0c\x00\xff\xff\xff\xff\x0f\x00\x10\x00\xff\xff\x12\x00\x13\x00\x14\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x12\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x12\x00\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x3b\x00\x27\x00\x2a\x00\x9f\x00\x28\x00\x3c\x00\x29\x00\x4c\x00\x2a\x00\x0b\x00\x0b\x00\x2b\x00\xb5\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x07\x00\x0b\x00\x22\x00\x23\x00\x24\x00\x87\x00\x3f\x00\x1a\x00\x88\x00\x89\x00\x0a\x00\x2c\x00\xa0\x00\x8a\x00\x0a\x00\x8b\x00\x48\x00\x0c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x49\x00\x8c\x00\x0b\x00\x31\x00\x8d\x00\x7c\x00\x0b\x00\xb3\x00\x8e\x00\x8f\x00\x90\x00\x91\x00\x79\x00\x07\x00\x92\x00\x03\x00\x32\x00\x33\x00\x34\x00\x07\x00\x27\x00\xa3\x00\x5b\x00\x28\x00\xa4\x00\x29\x00\x1a\x00\x2a\x00\x0b\x00\xab\xff\x2b\x00\x36\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x37\x00\x0d\x00\x22\x00\x23\x00\x24\x00\x87\x00\x38\x00\x74\x00\x88\x00\x89\x00\x9c\x00\x2c\x00\x5d\x00\x8a\x00\x0a\x00\x8b\x00\x77\x00\x79\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x5c\x00\x8c\x00\x73\x00\x31\x00\x8d\x00\x75\x00\x0b\x00\x3d\x00\x8e\x00\x8f\x00\x90\x00\x91\x00\x79\x00\x1b\x00\x34\x00\x03\x00\x32\x00\x33\x00\x34\x00\x07\x00\x27\x00\x0f\x00\x08\x00\x28\x00\x4e\x00\x29\x00\x5f\x00\x2a\x00\x07\x00\x50\x00\x2b\x00\x27\x00\x05\x00\x54\x00\x28\x00\x03\x00\x29\x00\x79\x00\x2a\x00\xa2\x00\xb0\x00\x2b\x00\xa6\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x2c\x00\xa3\x00\x22\x00\x23\x00\x24\x00\x93\x00\x94\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x67\x00\x95\x00\x31\x00\x96\x00\x79\x00\x9e\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x79\x00\x7c\x00\x4c\x00\x31\x00\x03\x00\x32\x00\x33\x00\x34\x00\x07\x00\x70\x00\x71\x00\x72\x00\x73\x00\x3d\x00\x07\x00\x03\x00\x32\x00\x33\x00\x34\x00\x07\x00\x4d\x00\x4e\x00\x3f\x00\x4f\x00\x07\x00\x42\x00\x50\x00\x51\x00\x43\x00\x53\x00\x54\x00\x44\x00\xb3\x00\x55\x00\x56\x00\x45\x00\x57\x00\x58\x00\x59\x00\x4d\x00\x4e\x00\x4c\x00\x4f\x00\x5c\x00\xab\x00\x50\x00\x51\x00\x5b\x00\x53\x00\x54\x00\x36\x00\x03\x00\x55\x00\x56\x00\x0f\x00\x57\x00\x58\x00\x59\x00\x07\x00\x1a\x00\x4d\x00\x4e\x00\xff\xff\x4f\x00\x03\x00\xac\x00\x50\x00\x51\x00\x05\x00\x53\x00\x54\x00\x00\x00\x5a\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\xad\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x5a\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x00\x00\x00\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\xae\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x5a\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x5a\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x00\x00\x00\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\x0b\x00\x50\x00\x51\x00\x36\x00\x53\x00\x54\x00\x00\x00\x5a\x00\x55\x00\x56\x00\x37\x00\x57\x00\x58\x00\x59\x00\x00\x00\x7b\x00\x38\x00\x39\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x79\x00\x5a\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\x6f\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x00\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x00\x00\x5a\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\x00\x00\x50\x00\x51\x00\x52\x00\x53\x00\x54\x00\x00\x00\x00\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x4d\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x11\x00\x5a\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x00\x00\x12\x00\x00\x00\x11\x00\x00\x00\x13\x00\x00\x00\x14\x00\x00\x00\x00\x00\x15\x00\x00\x00\x00\x00\x00\x00\x5a\x00\x16\x00\x13\x00\x00\x00\x14\x00\x17\x00\x00\x00\x15\x00\x11\x00\x00\x00\x00\x00\x00\x00\x16\x00\x18\x00\x00\x00\x11\x00\x17\x00\x00\x00\x19\x00\x5a\x00\x00\x00\x13\x00\x00\x00\x14\x00\x18\x00\x00\x00\x15\x00\x00\x00\x13\x00\x19\x00\x14\x00\x16\x00\x00\x00\x15\x00\x00\x00\x17\x00\x00\x00\x00\x00\x16\x00\x00\x00\x00\x00\x00\x00\x17\x00\x18\x00\x00\x00\x00\x00\x00\x00\x00\x00\x77\x00\x00\x00\x18\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x7d\x00\x21\x00\x00\x00\x00\x00\x7e\x00\x23\x00\x7f\x00\x00\x00\x00\x00\x81\x00\x00\x00\x00\x00\x00\x00\x9a\x00\x00\x00\x00\x00\x85\x00\x00\x00\x00\x00\xb4\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x7d\x00\x21\x00\x00\x00\x00\x00\x99\x00\x23\x00\x7f\x00\x00\x00\x00\x00\x81\x00\x00\x00\x00\x00\x00\x00\x9a\x00\x00\x00\x00\x00\x85\x00\x00\x00\x00\x00\x9b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x7d\x00\x21\x00\x00\x00\x00\x00\x7e\x00\x23\x00\x7f\x00\x00\x00\x80\x00\x81\x00\x00\x00\x82\x00\xae\x00\x84\x00\x00\x00\x00\x00\x85\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x7d\x00\x21\x00\x00\x00\x00\x00\x7e\x00\x23\x00\x7f\x00\x00\x00\x80\x00\x81\x00\x00\x00\x82\x00\x96\x00\x84\x00\x00\x00\x00\x00\x85\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x7d\x00\x21\x00\x00\x00\x00\x00\x7e\x00\x23\x00\x7f\x00\x00\x00\x80\x00\x81\x00\x00\x00\x82\x00\x83\x00\x84\x00\x00\x00\x4e\x00\x85\x00\x00\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x4e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x00\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x00\x00\x4e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x4e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x00\x00\x55\x00\x56\x00\x00\x00\x57\x00\x58\x00\x59\x00\x00\x00\x4e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x00\x51\x00\x00\x00\x53\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x40\x00\x22\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x25\x00\xb0\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\xb1\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x9f\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\xa6\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\xa7\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\xa8\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\xa9\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x97\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x98\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x5f\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x60\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x61\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x62\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x63\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x64\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x65\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x66\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x68\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x69\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x6a\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x6b\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x6c\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x6d\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x45\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x46\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x47\x00\x23\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x00\x00\x4a\x00\x23\x00\x24\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 92) [
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
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92)
	]

happy_n_terms = 62 :: Int
happy_n_nonterms = 24 :: Int

happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn4
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = read happy_var_1 :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn5
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = read happy_var_1 :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_3 = happySpecReduce_1  2# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn6
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = read happy_var_1 :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_4 = happySpecReduce_1  3# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn7
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_5 = happySpecReduce_1  4# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn8
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = Id happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_6 = happySpecReduce_1  5# happyReduction_6
happyReduction_6 happy_x_1
	 =  happyIn9
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = Boolean_true  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_7 = happySpecReduce_1  5# happyReduction_7
happyReduction_7 happy_x_1
	 =  happyIn9
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = Boolean_false  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_8 = happySpecReduce_1  6# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TVoid  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_9 = happySpecReduce_1  6# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TInt  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_10 = happySpecReduce_1  6# happyReduction_10
happyReduction_10 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TBool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_11 = happySpecReduce_1  6# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TFloat  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_12 = happySpecReduce_1  6# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TChar  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_13 = happySpecReduce_1  6# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TString  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_14 = happyReduce 4# 6# happyReduction_14
happyReduction_14 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut4 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TArray (value happySubAttrs_2) (value happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_15 = happySpecReduce_2  6# happyReduction_15
happyReduction_15 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut10 happy_x_2 of { happy_var_2 -> 
	happyIn10
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ posi = pos happy_var_1 , value = TPointer (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_16 = happySpecReduce_1  7# happyReduction_16
happyReduction_16 happy_x_1
	 =  happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = PassVal  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_17 = happySpecReduce_1  7# happyReduction_17
happyReduction_17 happy_x_1
	 =  happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ value = PassRef  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_18 = happySpecReduce_3  8# happyReduction_18
happyReduction_18 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tacJ happySubAttrs_1) ++[CondJFalse (tacId happySubAttrs_1) ( (true happySubAttrs_1) +1)]++ (tacJ happySubAttrs_3) ++[BinOp "&&" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "&&" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkBoolOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpAnd (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ true = snd (indexNew happySubAttrs_1) , index = (index happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , false = (false happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ true = (true happySelfAttrs) , index = (indexNew happySubAttrs_1) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , false = (false happySelfAttrs)  }; happyConditions = [case checkBoolOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_19 = happySpecReduce_3  8# happyReduction_19
happyReduction_19 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tacJ happySubAttrs_1) ++[CondJTrue (tacId happySubAttrs_1) ( (true happySubAttrs_1) +1)]++ (tacJ happySubAttrs_3) ++[BinOp "||" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "||" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkBoolOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpOr (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ true = snd (indexNew happySubAttrs_1) , index = (index happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , false = (false happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ true = (true happySelfAttrs) , index = (indexNew happySubAttrs_1) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , false = (false happySelfAttrs)  }; happyConditions = [case checkBoolOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_20 = happySpecReduce_2  8# happyReduction_20
happyReduction_20 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_2) ++[UnOp "!" (tacId happySelfAttrs) (tacId happySubAttrs_2) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_2) ) + 1, snd (indexNew happySubAttrs_2) ) , err = if (err happySubAttrs_2) =="" then if not $ (aType happySubAttrs_2) ==TBool then "Type error at "++(pos happy_var_1 )++": expected type: boolean" else "" else (err happySubAttrs_2) , aType = TBool , value = ExpNot (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_2) =="" then if not $ (aType happySubAttrs_2) ==TBool then Bad $ "Type error at "++(pos happy_var_1 )++": expected type: boolean" else Ok () else Bad (err happySubAttrs_2) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_21 = happySpecReduce_3  8# happyReduction_21
happyReduction_21 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp " ==" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpEq (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_22 = happySpecReduce_3  8# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "! =" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpNeq (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_23 = happySpecReduce_3  8# happyReduction_23
happyReduction_23 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "<" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpLt (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_24 = happySpecReduce_3  8# happyReduction_24
happyReduction_24 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "< =" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpLtE (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_25 = happySpecReduce_3  8# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp ">" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpGt (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_26 = happySpecReduce_3  8# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "> =" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TBool , value = ExpGtE (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkRelOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_27 = happySpecReduce_3  8# happyReduction_27
happyReduction_27 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ (case (aType happySelfAttrs) of { TFloat -> if not ( (aType happySubAttrs_1) ==TFloat) then [BinOp "+" (tacId happySelfAttrs) ("(float)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TFloat) then [BinOp "+" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(float)"++ (tacId happySubAttrs_3) )] ; else [BinOp "+" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; TInt -> if not ( (aType happySubAttrs_1) ==TInt) then [BinOp "+" (tacId happySelfAttrs) ("(int)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TInt) then [BinOp "+" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )] ; else [BinOp "+" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; _ -> [BinOp "+" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; } ) , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = if (aType happySubAttrs_1) ==TFloat || (aType happySubAttrs_3) ==TFloat then TFloat else TInt , value = ExpAdd (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_28 = happySpecReduce_3  8# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ (case (aType happySelfAttrs) of { TFloat -> if not ( (aType happySubAttrs_1) ==TFloat) then [BinOp "-" (tacId happySelfAttrs) ("(float)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TFloat) then [BinOp "-" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(float)"++ (tacId happySubAttrs_3) )] ; else [BinOp "-" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; TInt -> if not ( (aType happySubAttrs_1) ==TInt) then [BinOp "-" (tacId happySelfAttrs) ("(int)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TInt) then [BinOp "-" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )] ; else [BinOp "-" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; _ -> [BinOp "-" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; } ) , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = if (aType happySubAttrs_1) ==TFloat || (aType happySubAttrs_3) ==TFloat then TFloat else TInt , value = ExpSub (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_29 = happySpecReduce_3  8# happyReduction_29
happyReduction_29 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ (case (aType happySelfAttrs) of { TFloat -> if not ( (aType happySubAttrs_1) ==TFloat) then [BinOp "*" (tacId happySelfAttrs) ("(float)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TFloat) then [BinOp "*" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(float)"++ (tacId happySubAttrs_3) )] ; else [BinOp "*" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; TInt -> if not ( (aType happySubAttrs_1) ==TInt) then [BinOp "*" (tacId happySelfAttrs) ("(int)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TInt) then [BinOp "*" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )] ; else [BinOp "*" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; _ -> [BinOp "*" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; } ) , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = (checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , aType = if (aType happySubAttrs_1) ==TFloat || (aType happySubAttrs_3) ==TFloat then TFloat else TInt , value = ExpMul (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_30 = happySpecReduce_3  8# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ (case (aType happySelfAttrs) of { TFloat -> if not ( (aType happySubAttrs_1) ==TFloat) then [BinOp "/" (tacId happySelfAttrs) ("(float)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TFloat) then [BinOp "/" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(float)"++ (tacId happySubAttrs_3) )] ; else [BinOp "/" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; TInt -> if not ( (aType happySubAttrs_1) ==TInt) then [BinOp "/" (tacId happySelfAttrs) ("(int)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] ; else if not ( (aType happySubAttrs_3) ==TInt) then [BinOp "/" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )] ; else [BinOp "/" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; _ -> [BinOp "/" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; } ) , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 , aType = TFloat , value = ExpDiv (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_31 = happySpecReduce_3  8# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ if (aType happySubAttrs_1) ==TBool && (aType happySubAttrs_3) ==TBool then [BinOp "%" (tacId happySelfAttrs) ("(int)"++ (tacId happySubAttrs_1) ) ("(int)"++ (tacId happySubAttrs_3) )] else if (aType happySubAttrs_1) ==TInt then [BinOp "%" (tacId happySelfAttrs) ("(int)"++ (tacId happySubAttrs_1) ) (tacId happySubAttrs_3) ] else if (aType happySubAttrs_3) ==TInt then [BinOp "%" (tacId happySelfAttrs) (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )] else [BinOp "%" (tacId happySelfAttrs) (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = (checkAritOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 ) , aType = TInt , value = ExpMod (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [case checkModOp (aType happySubAttrs_1) (aType happySubAttrs_3) (err happySubAttrs_1) (err happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_32 = happySpecReduce_2  8# happyReduction_32
happyReduction_32 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_2) ++[UnOp "-" (tacId happySelfAttrs) (tacId happySubAttrs_2) ] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_2) ) + 1, snd (indexNew happySubAttrs_2) ) , err = if (err happySubAttrs_2) =="" then if not $ (aType happySubAttrs_2) ==TBool || (aType happySubAttrs_2) ==TInt || (aType happySubAttrs_2) ==TFloat then "Type error at "++(pos happy_var_1 )++": expected numeric type (or boolean)" else "" else (err happySubAttrs_2) , aType = (aType happySubAttrs_2) , value = ExpNeg (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_2) =="" then Ok () else Bad (err happySubAttrs_2) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_33 = happySpecReduce_2  8# happyReduction_33
happyReduction_33 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_2) ++[NulOp (tacId happySelfAttrs) ("&"++ (tacId happySubAttrs_2) )] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_2) ) + 1, snd (indexNew happySubAttrs_2) ) , err = (err happySubAttrs_2) , aType = TPointer (aType happySubAttrs_2) , value = ExpRef (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_34 = happySpecReduce_3  8# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = if (aType happySelfAttrs) ==TVoid then [FunCall 'p' "" (Id (tacId happySubAttrs_1) ) []] else [FunCall 'f' (tacId happySelfAttrs) (Id (tacId happySubAttrs_1) ) []] , tacId = if (aType happySelfAttrs) ==TVoid then "" else "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = if (aType happySelfAttrs) ==TVoid then (index happySelfAttrs) else ( (fst (index happySelfAttrs) ) + 1, snd (index happySelfAttrs) ) , err = checkCallProc (value happySubAttrs_1) (envFun happySelfAttrs) [] happy_var_2 , aType = getTypeFun $ extractFun (value happySubAttrs_1) (envFun happySelfAttrs) , value = ExpFuncEmpty (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ tacId = (idToStr (value happySubAttrs_1) )++getPosF (value happySubAttrs_1) (envFun happySelfAttrs)  }; happyConditions = [case checkCallProc (value happySubAttrs_1) (envFun happySelfAttrs) [] happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_35 = happyReduce 4# 8# happyReduction_35
happyReduction_35 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = if (aType happySelfAttrs) ==TVoid then (tac happySubAttrs_3) ++[FunCall 'p' "" (Id (tacId happySubAttrs_1) ) (paramCast (value happySubAttrs_1) (envFun happySelfAttrs) (aTypeList happySubAttrs_3) (tacIdList happySubAttrs_3) )] else (tac happySubAttrs_3) ++[FunCall 'f' (tacId happySelfAttrs) (Id (tacId happySubAttrs_1) ) (paramCast (value happySubAttrs_1) (envFun happySelfAttrs) (aTypeList happySubAttrs_3) (tacIdList happySubAttrs_3) )] , tacId = if (aType happySelfAttrs) ==TVoid then "" else "t"++(show $ fst (indexNew happySelfAttrs) ) , indexNew = if (aType happySelfAttrs) ==TVoid then (indexNew happySubAttrs_3) else ( (fst (indexNew happySubAttrs_3) ) + 1, snd (indexNew happySubAttrs_3) ) , err = checkCallFun (err happySubAttrs_3) (value happySubAttrs_1) (envFun happySelfAttrs) (aTypeList happySubAttrs_3) happy_var_2 , aType = getTypeFun $ extractFun (value happySubAttrs_1) (envFun happySelfAttrs) , value = ExpFunc (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ tacId = (idToStr (value happySubAttrs_1) )++getPosF (value happySubAttrs_1) (envFun happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [case checkCallFun (err happySubAttrs_3) (value happySubAttrs_1) (envFun happySelfAttrs) (aTypeList happySubAttrs_3) happy_var_2 of { "" -> Ok () ; x -> Bad x ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_36 = happySpecReduce_1  8# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = [] , tac = [] , tacId = showVal (value happySubAttrs_1) , indexNew = (index happySelfAttrs) , err = "" , aType = (aType happySubAttrs_1) , value = ExpVal (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envVar = (envVar happySelfAttrs) , envFun = (envFun happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_37 = happySpecReduce_1  8# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_1) , tacId = (tacId happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , err = (err happySubAttrs_1) , aType = (aType happySubAttrs_1) , value = ExpLExp (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_38 = happySpecReduce_3  8# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = (tac happySubAttrs_2) , tacId = (tacId happySubAttrs_2) , indexNew = (indexNew happySubAttrs_2) , err = (err happySubAttrs_2) , aType = (aType happySubAttrs_2) , value = ExpPar (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_39 = happySpecReduce_3  8# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = [FunCall 'f' (tacId happySelfAttrs) (Id "readInt") []] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , err = "" , indexNew = ((fst (index happySelfAttrs) )+1,snd (index happySelfAttrs) ) , aReturn = False , aType = TInt , value = StRead ReadT_readInt  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_40 = happySpecReduce_3  8# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = [FunCall 'f' (tacId happySelfAttrs) (Id "readFloat") []] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , err = "" , indexNew = ((fst (index happySelfAttrs) )+1,snd (index happySelfAttrs) ) , aReturn = False , aType = TFloat , value = StRead ReadT_readFloat  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_41 = happySpecReduce_3  8# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = [FunCall 'f' (tacId happySelfAttrs) (Id "readChar") []] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , err = "" , indexNew = ((fst (index happySelfAttrs) )+1,snd (index happySelfAttrs) ) , aReturn = False , aType = TChar , value = StRead ReadT_readChar  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_42 = happySpecReduce_3  8# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tacJ = (tac happySelfAttrs) , tac = [FunCall 'f' (tacId happySelfAttrs) (Id "readString") []] , tacId = "t"++(show $ fst (indexNew happySelfAttrs) ) , err = "" , indexNew = ((fst (index happySelfAttrs) )+1,snd (index happySelfAttrs) ) , aReturn = False , aType = TString , value = StRead ReadT_readString  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_43 = happySpecReduce_1  9# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aType = TInt , value = Int (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_44 = happySpecReduce_1  9# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aType = TFloat , value = Float (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_45 = happySpecReduce_1  9# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aType = TChar , value = Char (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_46 = happySpecReduce_1  9# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aType = TString , value = String (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_47 = happySpecReduce_1  9# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aType = TBool , value = Bool (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_48 = happySpecReduce_1  10# happyReduction_48
happyReduction_48 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , tacId = (idToStr (value happySubAttrs_1) )++(getPosV (value happySubAttrs_1) (envVar happySelfAttrs) ) , indexNew = (index happySelfAttrs) , err = if not $ searchVar (value happySubAttrs_1) (envVar happySelfAttrs) then "Error : variable "++(idToStr (value happySubAttrs_1) )++" not in scope" else "" , aType = getTypeVar $ extractVar (value happySubAttrs_1) (envVar happySelfAttrs) , value = ExpId (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [if not $ searchVar (value happySubAttrs_1) (envVar happySelfAttrs) then Bad $ "Error : variable "++(idToStr (value happySubAttrs_1) )++" not in scope" else Ok () ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_49 = happyReduce 4# 10# happyReduction_49
happyReduction_49 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++[BinOp "*" ("t"++(show $ (fst (indexNew happySubAttrs_3) ) +1)) (tacId happySubAttrs_3) (show $ size (aType happySelfAttrs) )] , tacId = (tacId happySubAttrs_1) ++"[t"++(show $ (fst (indexNew happySubAttrs_3) ) +1)++"]" , indexNew = ((fst (indexNew happySubAttrs_3) )+1, snd (indexNew happySubAttrs_3) ) , err = if (err happySubAttrs_1) =="" && (err happySubAttrs_3) =="" then case (aType happySubAttrs_1) of { TArray _ _ -> if not $ (aType happySubAttrs_3) ==TInt then "Type error at "++(pos happy_var_2 )++": expected int, "++showType ( (aType happySubAttrs_3) )++" found" else "" ; otherwise -> "Type error at "++(pos happy_var_2 )++": expected array, "++showType ( (aType happySubAttrs_1) )++" found" ; } else if (err happySubAttrs_1) =="" then (err happySubAttrs_3) else (err happySubAttrs_1) , aType = getTypeArr (aType happySubAttrs_1) , value = ExpArr (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [if (err happySubAttrs_1) =="" && (err happySubAttrs_3) =="" then case (aType happySubAttrs_1) of { TArray _ _ -> if not $ (aType happySubAttrs_3) ==TInt then Bad $ "Type error at "++(pos happy_var_2 )++": expected int, "++showType ( (aType happySubAttrs_3) )++" found" else Ok () ; otherwise -> Bad $ "Type error at "++(pos happy_var_2 )++": expected array, "++showType ( (aType happySubAttrs_1) )++" found" ; } else if (err happySubAttrs_1) =="" then Bad (err happySubAttrs_3) else Bad (err happySubAttrs_1) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_50 = happySpecReduce_2  10# happyReduction_50
happyReduction_50 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) , tacId = "*"++( (tacId happySubAttrs_2) ) , indexNew = (indexNew happySubAttrs_2) , err = if (err happySubAttrs_2) =="" then if not $ isTypePtr (aType happySubAttrs_2) then "Type error at "++(pos happy_var_1 )++": expected pointer, "++showType ( (aType happySubAttrs_2) )++" found" else "" else (err happySubAttrs_2) , aType = getTypePtr (aType happySubAttrs_2) , value = ExpDeref (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_2) =="" then if not $ isTypePtr (aType happySubAttrs_2) then Bad $ "Type error at "++(pos happy_var_1 )++": expected pointer, "++showType ( (aType happySubAttrs_2) )++" found" else Ok () else Bad (err happySubAttrs_2) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_51 = happySpecReduce_3  11# happyReduction_51
happyReduction_51 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_2 of { happy_var_2 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) , aType = TInt , envFun = [] , envVar = [] , value = (Entry (value happySubAttrs_2) (reverse (value happySubAttrs_3) ), (tac happySelfAttrs) )  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (0,0)  }; happyConditions = []++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_52 = happySpecReduce_3  12# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_3 of { happy_var_3 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , indexNew = (index happySelfAttrs) , idList = setPos (value happySubAttrs_2) (pos happy_var_1 ) , envFunNew = (envFun happySelfAttrs) , envVarNew = unionVar (createListType (value happySubAttrs_2) (value happySubAttrs_3) (pos happy_var_1 )) (envVar happySelfAttrs) , value = DeclVar (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [case checkSameBlockList (idList happySelfAttrs) (envVar happySelfAttrs) of { Just a -> Bad $ "Error at "++(pos happy_var_1 )++": variable "++(idToStr a)++" already declared" ; Nothing -> Ok () ; } ]++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_53 = happyReduce 4# 12# happyReduction_53
happyReduction_53 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_4 of { happy_var_4 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_4) ++(tacAssign (idList happySelfAttrs) (tacIdList happySubAttrs_4) ) , indexNew = (indexNew happySubAttrs_4) , idList = setPos (value happySubAttrs_2) (pos happy_var_1 ) , envFunNew = (envFun happySelfAttrs) , envVarNew = unionVar (createListTypes (value happySubAttrs_2) (aTypeList happySubAttrs_4) (pos happy_var_1 )) (envVar happySelfAttrs) , value = DeclVarInit (value happySubAttrs_2) (value happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [case checkSameBlockList (value happySubAttrs_2) (envVar happySelfAttrs) of { Just a -> Bad $ "Error at "++(pos happy_var_1 )++": variable "++(idToStr a)++" already declared" ; Nothing -> if not $ length (value happySubAttrs_2) ==length (aTypeList happySubAttrs_4) then Bad $ "Error at "++(pos happy_var_1 )++": number of variables and number of expressions don't match" else Ok () ; } ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_54 = happyReduce 5# 12# happyReduction_54
happyReduction_54 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOutTok happy_x_4 of { happy_var_4 -> 
	case happyOut22 happy_x_5 of { happy_var_5 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_5) ++(tacAssignCast (idList happySelfAttrs) (tacIdList happySubAttrs_5) (value happySubAttrs_3) (aTypeList happySubAttrs_5) ) , indexNew = (indexNew happySubAttrs_5) , idList = setPos (value happySubAttrs_2) (pos happy_var_1 ) , envFunNew = (envFun happySelfAttrs) , envVarNew = unionVar (createListType (value happySubAttrs_2) (value happySubAttrs_3) (pos happy_var_1 )) (envVar happySelfAttrs) , value = DeclVarTypeInit (value happySubAttrs_2) (value happySubAttrs_3) (value happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [case checkSameBlockList (value happySubAttrs_2) (envVar happySelfAttrs) of { Just a -> Bad $ "Error at "++(pos happy_var_1 )++": variable "++(idToStr a)++" already declared" ; Nothing -> if not $ length (value happySubAttrs_2) ==length (aTypeList happySubAttrs_5) then Bad $ "Error at "++(pos happy_var_1 )++": number of variables and number of expressions don't match" else case checkTypes (value happySubAttrs_3) ( (aTypeList happySubAttrs_5) ) of { Just a -> Bad $ "Type error at "++(pos happy_var_4 )++": cannot use "++(showType $ snd a)++" as "++(showType $ fst a)++" in assignment" ; Nothing -> Ok () ; } ; } ]++happyConditions_2++happyConditions_3++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}}

happyReduce_55 = happyReduce 7# 12# happyReduction_55
happyReduction_55 (happy_x_7 `HappyStk`
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
	case happyOut10 happy_x_6 of { happy_var_6 -> 
	case happyOut19 happy_x_7 of { happy_var_7 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [FunDecl "function" (Id $ idToStr $ head (idList happySelfAttrs) ) (length (aTypeList happySubAttrs_4) )]++ (tac happySubAttrs_7) ++[Lbl $ (snd (indexNew happySubAttrs_7) )+1] , indexNew = ( fst (indexNew happySubAttrs_7) , (snd (indexNew happySubAttrs_7) ) + 1 ) , idList = setPos [ (value happySubAttrs_2) ] (pos happy_var_1 ) , envFunNew = insertFun (Fun (value happySubAttrs_2) (value happySubAttrs_6) (aTypeList happySubAttrs_4) (pos happy_var_1 )) (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = DeclFun (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_6) (value happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ forLabels = (-1,-1) , aTypeFun = (value happySubAttrs_6) , envFun = (envFunNew happySelfAttrs) , envVar = unionVar (envVar happySubAttrs_4) (resetEnvVar (envVar happySelfAttrs) ) , index = (index happySelfAttrs)  }; happyConditions = [if searchFun (value happySubAttrs_2) (envFun happySelfAttrs) then Bad $ "Error at "++(pos happy_var_1 )++": function "++(idToStr (value happySubAttrs_2) )++" already declared" else when (not (aReturn happySubAttrs_7) ) $ Bad $ "Error at "++(pos happy_var_1 )++": missing return at end of function" ]++happyConditions_2++happyConditions_4++happyConditions_6++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}}

happyReduce_56 = happyReduce 7# 12# happyReduction_56
happyReduction_56 (happy_x_7 `HappyStk`
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
	case happyOut19 happy_x_7 of { happy_var_7 -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [FunDecl "procedure" (Id $ idToStr $ head (idList happySelfAttrs) ) (length (aTypeList happySubAttrs_4) )]++ (tac happySubAttrs_7) ++[Lbl $ (snd (indexNew happySubAttrs_7) ) + 1] , indexNew = ( fst (indexNew happySubAttrs_7) , (snd (indexNew happySubAttrs_7) ) + 1 ) , idList = setPos [ (value happySubAttrs_2) ] (pos happy_var_1 ) , envFunNew = insertFun (Fun (value happySubAttrs_2) TVoid (aTypeList happySubAttrs_4) (pos happy_var_1 )) (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = DeclProc (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ forLabels = (-1,-1) , aTypeFun = TVoid , envFun = (envFunNew happySelfAttrs) , envVar = unionVar (envVar happySubAttrs_4) (resetEnvVar (envVar happySelfAttrs) ) , index = (index happySelfAttrs)  }; happyConditions = [if searchFun (value happySubAttrs_2) (envFun happySelfAttrs) then Bad $ "Error at "++(pos happy_var_1 )++": procedure "++(idToStr (value happySubAttrs_2) )++" already declared" else Ok () ]++happyConditions_2++happyConditions_4++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

happyReduce_57 = happySpecReduce_3  13# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++(tacAssign (idList happySelfAttrs) (tacIdList happySubAttrs_3) ) , indexNew = (indexNew happySubAttrs_3) , idList = setPos (value happySubAttrs_1) (pos happy_var_2 ) , envFunNew = (envFun happySelfAttrs) , envVarNew = unionVar (createListTypes (value happySubAttrs_1) (aTypeList happySubAttrs_3) (pos happy_var_2 )) (envVar happySelfAttrs) , value = DeclVarShort (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [case checkSameBlockList (value happySubAttrs_1) (envVar happySelfAttrs) of { Just a -> Bad $ "Error at "++(pos happy_var_2 )++": variable "++(idToStr a)++" already declared" ; Nothing -> if not $ length (value happySubAttrs_1) ==length (aTypeList happySubAttrs_3) then Bad $ "Error at "++(pos happy_var_2 )++": number of variables and number of expressions don't match" else Ok () ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_58 = happySpecReduce_2  14# happyReduction_58
happyReduction_58 happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOut10 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aTypeList = replicate (length (value happySubAttrs_1) ) (value happySubAttrs_2) , envVar = createListType (value happySubAttrs_1) (value happySubAttrs_2) (posi happySubAttrs_2) , value = Parameter (value happySubAttrs_1) (value happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_59 = happySpecReduce_3  14# happyReduction_59
happyReduction_59 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut10 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aTypeList = replicate (length (value happySubAttrs_2) ) (value happySubAttrs_3) , envVar = if (value happySubAttrs_1) ==PassRef then createListType (value happySubAttrs_2) (value happySubAttrs_3) (posi happySubAttrs_3) else createListType (value happySubAttrs_2) (value happySubAttrs_3) (posi happySubAttrs_3) , value = ParameterPass (value happySubAttrs_1) (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_60 = happySpecReduce_3  15# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) , indexNew = (indexNew happySubAttrs_2) , aReturn = (aReturn happySubAttrs_2) , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = BodyBlock $ reverse (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_61 = happySpecReduce_1  16# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , aReturn = False , envFunNew = (envFunNew happySubAttrs_1) , envVarNew = (envVarNew happySubAttrs_1) , value = StDecl (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_62 = happySpecReduce_1  16# happyReduction_62
happyReduction_62 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StBlock (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = resetEnvVar (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_63 = happySpecReduce_1  16# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , aReturn = False , envFunNew = (envFunNew happySubAttrs_1) , envVarNew = (envVarNew happySubAttrs_1) , value = StSmpl (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_64 = happySpecReduce_3  16# happyReduction_64
happyReduction_64 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = shift (tacJ happySubAttrs_2) (snd (indexNew happySubAttrs_3) ) ++[CondJFalse (tacId happySubAttrs_2) ((snd (indexNew happySubAttrs_3) )+2)] ++[Lbl $ (snd (indexNew happySubAttrs_3) ) + 1] ++ (tac happySubAttrs_3) ++[Lbl $ (snd (indexNew happySubAttrs_3) ) + 2] , indexNew = ( fst (indexNew happySubAttrs_3) , (snd (indexNew happySubAttrs_3) ) + 2 ) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StIf (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = resetEnvVar (envVar happySelfAttrs) , index = (indexNew happySubAttrs_2)  }; happyConditions = [if (err happySubAttrs_2) =="" then when (not $ (aType happySubAttrs_2) ==TBool) $ Bad $ "Type error at "++(pos happy_var_1 )++": type "++(showType (aType happySubAttrs_2) ) ++" used as condition (if)" else Bad (err happySubAttrs_2) ]++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_65 = happyReduce 5# 16# happyReduction_65
happyReduction_65 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	case happyOut19 happy_x_5 of { happy_var_5 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = shift (tacJ happySubAttrs_2) (snd (indexNew happySubAttrs_5) ) ++[CondJFalse (tacId happySubAttrs_2) ((snd (indexNew happySubAttrs_5) )+2)] ++[Lbl $ (snd (indexNew happySubAttrs_5) ) + 1] ++ (tac happySubAttrs_3) ++[UncondJ $ (snd (indexNew happySubAttrs_5) ) + 3] ++[Lbl $ (snd (indexNew happySubAttrs_5) ) + 2] ++ (tac happySubAttrs_5) ++[Lbl $ (snd (indexNew happySubAttrs_5) ) + 3] , indexNew = ( fst (indexNew happySubAttrs_5) , (snd (indexNew happySubAttrs_5) ) + 3) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StIfElse (value happySubAttrs_2) (value happySubAttrs_3) (value happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = resetEnvVar (envVar happySelfAttrs) , index = (indexNew happySubAttrs_2)  }; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = resetEnvVar (envVar happySelfAttrs) , index = (indexNew happySubAttrs_3)  }; happyConditions = [if (err happySubAttrs_2) =="" then when (not $ (aType happySubAttrs_2) ==TBool) $ Bad $ "Type error at "++(pos happy_var_1 )++": type "++(showType (aType happySubAttrs_2) ) ++" used as condition (if)" else Bad (err happySubAttrs_2) ]++happyConditions_2++happyConditions_3++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

happyReduce_66 = happySpecReduce_3  16# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [Lbl $ (snd (indexNew happySubAttrs_3) ) + 1] ++shift (tacJ happySubAttrs_2) (snd (indexNew happySubAttrs_3) + 1) ++[CondJFalse (tacId happySubAttrs_2) ((snd (indexNew happySubAttrs_3) ) + 3)] ++[Lbl $ (snd (indexNew happySubAttrs_3) ) + 2] ++ (tac happySubAttrs_3) ++[UncondJ $ (snd (indexNew happySubAttrs_3) ) + 1] ++[Lbl $ (snd (indexNew happySubAttrs_3) ) + 3] , indexNew = ( fst (indexNew happySubAttrs_3) , (snd (indexNew happySubAttrs_3) ) + 3 ) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StWhile (value happySubAttrs_2) (value happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ forLabels = ( (snd (indexNew happySubAttrs_3) ) + 1, (snd (indexNew happySubAttrs_3) ) + 3 ) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = resetEnvVar (envVar happySelfAttrs) , index = (indexNew happySubAttrs_2)  }; happyConditions = [if (err happySubAttrs_2) =="" then when (not $ (aType happySubAttrs_2) ==TBool) $ Bad $ "Type error at "++(pos happy_var_1 )++": type "++(showType (aType happySubAttrs_2) ) ++" used as condition (for)" else Bad (err happySubAttrs_2) ]++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_67 = happyReduce 4# 16# happyReduction_67
happyReduction_67 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [Lbl $ (snd (indexNew happySubAttrs_2) ) + 1] ++shift (tacJ happySubAttrs_4) (snd (indexNew happySubAttrs_2) + 1) ++[Lbl $ (snd (indexNew happySubAttrs_2) ) + 2] ++ (tac happySubAttrs_2) ++[CondJTrue (tacId happySubAttrs_4) ((snd (indexNew happySubAttrs_2) ) + 2)] ++[Lbl $ (snd (indexNew happySubAttrs_2) ) + 3] , indexNew = ( fst (indexNew happySubAttrs_2) , (snd (indexNew happySubAttrs_2) ) + 3 ) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StDoWhile (value happySubAttrs_2) (value happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ forLabels = ( (snd (indexNew happySubAttrs_2) ) + 1, (snd (indexNew happySubAttrs_2) ) + 3 ) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = resetEnvVar (envVar happySelfAttrs) , index = (indexNew happySubAttrs_4)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_4) =="" then when (not $ (aType happySubAttrs_4) ==TBool) $ Bad $ "Type error at "++(pos happy_var_1 )++": type "++(showType (aType happySubAttrs_4) ) ++" used as condition (for)" else Bad (err happySubAttrs_4) ]++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyReduce_68 = happyReduce 7# 16# happyReduction_68
happyReduction_68 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_4 of { happy_var_4 -> 
	case happyOut27 happy_x_6 of { happy_var_6 -> 
	case happyOut19 happy_x_7 of { happy_var_7 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++ [Lbl $ (snd (indexNew happySubAttrs_7) )+1] ++ (tac happySubAttrs_4) ++ [CondJFalse (tacId happySubAttrs_4) ((snd (indexNew happySubAttrs_7) )+3)] ++ (tac happySubAttrs_7) ++ [Lbl $ (snd (indexNew happySubAttrs_7) )+2] ++ (tac happySubAttrs_6) ++ [UncondJ $ (snd (indexNew happySubAttrs_7) )+1] ++ [Lbl $ (snd (indexNew happySubAttrs_7) )+3] , indexNew = ( fst (indexNew happySubAttrs_7) , (snd (indexNew happySubAttrs_7) )+3 ) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StFor (value happySubAttrs_2) (value happySubAttrs_4) (value happySubAttrs_6) (value happySubAttrs_7)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (resetEnvVar (envVar happySelfAttrs) ) , index = (index happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envFun = (envFunNew happySubAttrs_2) , envVar = (envVarNew happySubAttrs_2) , index = (indexNew happySubAttrs_2)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envFun = (envFunNew happySubAttrs_2) , envVar = (envVarNew happySubAttrs_2) , index = (indexNew happySubAttrs_4)  }; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ forLabels = ( (snd (indexNew happySubAttrs_7) )+2, (snd (indexNew happySubAttrs_7) )+3 ) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFunNew happySubAttrs_6) , envVar = resetEnvVar (envVarNew happySubAttrs_2) , index = (indexNew happySubAttrs_6)  }; happyConditions = [if (err happySubAttrs_4) =="" then if (aType happySubAttrs_4) ==TBool then Ok () else Bad $ "Type error at "++(pos happy_var_1 )++": type "++ (showType (aType happySubAttrs_4) ) ++" used condition (for)" else Bad (err happySubAttrs_4) ]++happyConditions_2++happyConditions_4++happyConditions_6++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}}

happyReduce_69 = happySpecReduce_1  16# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [UncondJ $ snd (forLabels happySelfAttrs) ] , indexNew = (index happySelfAttrs) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StBreak  }; happyConditions = [when ( fst (forLabels happySelfAttrs) ==(-1) ) $ Bad $ "Error at "++(pos happy_var_1 )++": 'break' instruction outside of a loop" ] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_70 = happySpecReduce_1  16# happyReduction_70
happyReduction_70 happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [UncondJ $ fst (forLabels happySelfAttrs) ] , indexNew = (index happySelfAttrs) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StContinue  }; happyConditions = [when ( fst (forLabels happySelfAttrs) ==(-1) ) $ Bad $ "Error at "++(pos happy_var_1 )++": 'continue' instruction outside of a loop" ] } in (happyConditions,happySelfAttrs)
	)}

happyReduce_71 = happySpecReduce_2  16# happyReduction_71
happyReduction_71 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_2) ++[Return (tacId happySubAttrs_2) ] , indexNew = (indexNew happySubAttrs_2) , aReturn = True , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StReturn (value happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_2) =="" then case (aTypeFun happySelfAttrs) of { TVoid -> Bad $ "Error at "++(pos happy_var_1 )++": procedures can't return any value" ; _ -> when (not $ (aType happySubAttrs_2) ==(aTypeFun happySelfAttrs) ) $ Bad $ "Type error at "++(pos happy_var_1 )++": cannot use "++(showType (aType happySubAttrs_2) )++" as "++(showType (aTypeFun happySelfAttrs) )++" in return instruction" ; } else Bad (err happySubAttrs_2) ]++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_72 = happyReduce 4# 16# happyReduction_72
happyReduction_72 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut20 happy_x_2 of { happy_var_2 -> 
	case happyOut20 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [ExcpJ ((snd (indexNew happySubAttrs_4) )+1)] ++ (tac happySubAttrs_2) ++ [UncondJ ((snd (indexNew happySubAttrs_4) )+2)] ++ [Lbl ((snd (indexNew happySubAttrs_4) )+1)] ++ (tac happySubAttrs_4) ++ [Lbl ((snd (indexNew happySubAttrs_4) )+2)] , indexNew = ( (fst (indexNew happySubAttrs_4) ) , ((snd (indexNew happySubAttrs_4) )+2) ) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StTryCatch (value happySubAttrs_2) (value happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (resetEnvVar (envVar happySelfAttrs) ) , index = (index happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (resetEnvVar (envVar happySelfAttrs) ) , index = (indexNew happySubAttrs_2)  }; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

happyReduce_73 = happyReduce 4# 16# happyReduction_73
happyReduction_73 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++[FunCall 'p' "" (Id "writeInt") [ (tacId happySubAttrs_3) ]] , indexNew = (indexNew happySubAttrs_3) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StWrite WriteT_writeInt (value happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_3) =="" then when ( not $ (aType happySubAttrs_3) ==TInt ) $ Bad $ "Type error at "++(pos happy_var_2 )++": needed integer parameter when using writeInt" else Bad (err happySubAttrs_3) ]++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

happyReduce_74 = happyReduce 4# 16# happyReduction_74
happyReduction_74 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++[FunCall 'p' "" (Id "writeFloat") [ (tacId happySubAttrs_3) ]] , indexNew = (indexNew happySubAttrs_3) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StWrite WriteT_writeFloat (value happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_3) =="" then when ( not $ (aType happySubAttrs_3) ==TFloat ) $ Bad $ "Type error at "++(pos happy_var_2 )++": needed float parameter when using writeFloat" else Bad (err happySubAttrs_3) ]++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

happyReduce_75 = happyReduce 4# 16# happyReduction_75
happyReduction_75 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++[FunCall 'p' "" (Id "writeChar") [ (tacId happySubAttrs_3) ]] , indexNew = (indexNew happySubAttrs_3) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StWrite WriteT_writeChar (value happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_3) =="" then when ( not $ (aType happySubAttrs_3) ==TChar ) $ Bad $ "Type error at "++(pos happy_var_2 )++": needed char parameter when using writeChar" else Bad (err happySubAttrs_3) ]++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

happyReduce_76 = happyReduce 4# 16# happyReduction_76
happyReduction_76 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_3) ++[FunCall 'p' "" (Id "writeString") [ (tacId happySubAttrs_3) ]] , indexNew = (indexNew happySubAttrs_3) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StWrite WriteT_writeString (value happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_3) =="" then when ( not $ (aType happySubAttrs_3) ==TString ) $ Bad $ "Type error at "++(pos happy_var_2 )++": needed string parameter when using writeString" else Bad (err happySubAttrs_3) ]++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}

happyReduce_77 = happySpecReduce_1  17# happyReduction_77
happyReduction_77 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , envFunNew = (envFunNew happySubAttrs_1) , envVarNew = (envVarNew happySubAttrs_1) , value = StShortVarDecl (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_78 = happySpecReduce_1  17# happyReduction_78
happyReduction_78 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StExp (value happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = [if (err happySubAttrs_1) =="" then if (tacId happySubAttrs_1) =="" then Ok () else Bad "Error : right expression evaluated but not assigned" else Bad (err happySubAttrs_1) ]++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_79 = happySpecReduce_3  17# happyReduction_79
happyReduction_79 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) ++ if (aType happySubAttrs_1) ==TFloat && not ( (aType happySubAttrs_3) ==TFloat) then case (value happySubAttrs_3) of { ExpVal _ -> [NulOp (tacId happySubAttrs_1) ("(float)"++ (tacId happySubAttrs_3) )] ; _ -> [NulOp (tacId happySelfAttrs) ("(float)"++ (tacId happySubAttrs_3) )]++[NulOp (tacId happySubAttrs_1) (tacId happySelfAttrs) ] ; } else if (aType happySubAttrs_1) ==TInt && (aType happySubAttrs_3) ==TBool then case (value happySubAttrs_3) of { ExpVal _ -> [NulOp (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )] ; _ -> [NulOp (tacId happySubAttrs_1) ("(int)"++ (tacId happySubAttrs_3) )]++[NulOp (tacId happySubAttrs_1) (tacId happySelfAttrs) ] ; } else case (value happySubAttrs_3) of { ExpVal _ -> [NulOp (tacId happySubAttrs_1) (tacId happySubAttrs_3) ] ; _ -> [NulOp (tacId happySelfAttrs) (tacId happySubAttrs_3) ]++[NulOp (tacId happySubAttrs_1) (tacId happySelfAttrs) ] ; } , tacId = "t" ++ (show $ fst (indexNew happySelfAttrs) ) , indexNew = ( (fst (indexNew happySubAttrs_3) )+1, snd (indexNew happySubAttrs_3) ) , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = StAsgn (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = [if (err happySubAttrs_1) =="" && (err happySubAttrs_3) =="" then if (aType happySubAttrs_1) ==TFloat && (aType happySubAttrs_3) ==TInt then Ok () else when (not $ (aType happySubAttrs_1) ==(aType happySubAttrs_3) ) $ Bad $ "Type error at "++(pos happy_var_2 )++": cannot use "++(showType (aType happySubAttrs_3) )++" as "++(showType (aType happySubAttrs_1) )++" in assignment" else if not $ (err happySubAttrs_1) =="" then Bad $ (err happySubAttrs_1) else Bad (err happySubAttrs_3) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_80 = happySpecReduce_1  18# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , tacIdList = [ (tacId happySubAttrs_1) ] , indexNew = (indexNew happySubAttrs_1) , err = (err happySubAttrs_1) , aTypeList = [ (aType happySubAttrs_1) ] , value = [ (value happySubAttrs_1) ]  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_81 = happySpecReduce_3  18# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_3) , tacIdList = (tacId happySubAttrs_1) : (tacIdList happySubAttrs_3) , indexNew = (indexNew happySubAttrs_3) , err = (err happySubAttrs_1) , aTypeList = (aType happySubAttrs_1) : (aTypeList happySubAttrs_3) , value = (:) (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (indexNew happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_82 = happySpecReduce_0  19# happyReduction_82
happyReduction_82  =  happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , indexNew = (index happySelfAttrs) , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_83 = happySpecReduce_2  19# happyReduction_83
happyReduction_83 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_2 of { happy_var_2 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_2) , indexNew = (indexNew happySubAttrs_2) , envFunNew = (envFunNew happySubAttrs_2) , envVarNew = (envVarNew happySubAttrs_2) , value = flip (:) (value happySubAttrs_1) (value happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envFun = (envFunNew happySubAttrs_1) , envVar = (envVarNew happySubAttrs_1) , index = (indexNew happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_84 = happySpecReduce_1  20# happyReduction_84
happyReduction_84 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ idList = [ (value happySubAttrs_1) ] , value = [ (value happySubAttrs_1) ]  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_85 = happySpecReduce_3  20# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut24 happy_x_3 of { happy_var_3 -> 
	happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ idList = (value happySubAttrs_1) : (idList happySubAttrs_3) , value = (:) (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [when (elem (value happySubAttrs_1) (value happySubAttrs_3) ) $ Bad $ "Error at "++(pos happy_var_2 )++": duplicate identifier "++(idToStr (value happySubAttrs_1) ) ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_86 = happySpecReduce_0  21# happyReduction_86
happyReduction_86  =  happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aTypeList = [] , envVar = [] , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_87 = happySpecReduce_1  21# happyReduction_87
happyReduction_87 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aTypeList = (aTypeList happySubAttrs_1) , envVar = (envVar happySubAttrs_1) , value = [ (value happySubAttrs_1) ]  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyReduce_88 = happySpecReduce_3  21# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ aTypeList = ( (aTypeList happySubAttrs_1) )++( (aTypeList happySubAttrs_3) ) , envVar = (envVar happySubAttrs_1) ++ (envVar happySubAttrs_3) , value = (:) (value happySubAttrs_1) (value happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = [case checkVarParams (envVar happySubAttrs_1) (envVar happySubAttrs_3) of { Just a -> Bad $ "Error at "++(pos happy_var_2 )++": duplicate identifier "++idToStr a ; Nothing -> Ok () ; } ]++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}}

happyReduce_89 = happySpecReduce_0  22# happyReduction_89
happyReduction_89  =  happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , indexNew = (index happySelfAttrs) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_90 = happySpecReduce_2  22# happyReduction_90
happyReduction_90 happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_2 of { happy_var_2 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) ++ (tac happySubAttrs_2) , indexNew = (indexNew happySubAttrs_2) , aReturn = (aReturn happySubAttrs_2) , envFunNew = (envFunNew happySubAttrs_2) , envVarNew = (envVarNew happySubAttrs_2) , value = flip (:) (value happySubAttrs_1) (value happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFunNew happySubAttrs_1) , envVar = (envVarNew happySubAttrs_1) , index = (indexNew happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}}

happyReduce_91 = happySpecReduce_0  23# happyReduction_91
happyReduction_91  =  happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = [] , indexNew = (index happySelfAttrs) , aReturn = False , envFunNew = (envFun happySelfAttrs) , envVarNew = (envVar happySelfAttrs) , value = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_92 = happySpecReduce_1  23# happyReduction_92
happyReduction_92 happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ tac = (tac happySubAttrs_1) , indexNew = (indexNew happySubAttrs_1) , aReturn = (aReturn happySubAttrs_1) , envFunNew = (envFunNew happySubAttrs_1) , envVarNew = (envVarNew happySubAttrs_1) , value = [ (value happySubAttrs_1) ]  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ forLabels = (forLabels happySelfAttrs) , aTypeFun = (aTypeFun happySelfAttrs) , envFun = (envFun happySelfAttrs) , envVar = (envVar happySelfAttrs) , index = (index happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyNewToken action sts stk [] =
	happyDoAction 61# notHappyAtAll action sts stk []

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
	PT _ (TS _ 47) -> cont 47#;
	PT _ (TS _ 48) -> cont 48#;
	PT _ (TS _ 49) -> cont 49#;
	PT _ (TS _ 50) -> cont 50#;
	PT _ (TS _ 51) -> cont 51#;
	PT _ (TS _ 52) -> cont 52#;
	PT _ (TS _ 53) -> cont 53#;
	PT _ (TS _ 54) -> cont 54#;
	PT _ (TS _ 55) -> cont 55#;
	PT _ (TI happy_dollar_dollar) -> cont 56#;
	PT _ (TD happy_dollar_dollar) -> cont 57#;
	PT _ (TC happy_dollar_dollar) -> cont 58#;
	PT _ (TL happy_dollar_dollar) -> cont 59#;
	PT _ (T_Id happy_dollar_dollar) -> cont 60#;
	_ -> happyError' (tk:tks)
	}

happyError_ 61# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

do_pStart tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut15 x))

pStart toks = do { f <- do_pStart toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (value attrs) }}

happySeq = happyDontSeq

data MyAttributes a = HappyAttributes {value :: a, envVar :: [ElemVar], envFun :: [ElemFun], envVarNew :: [ElemVar], envFunNew :: [ElemFun], posi :: String, idList :: [Id], aType :: Type, aTypeList :: [Type], aTypeFun :: Type, aReturn :: Bool, forLabels :: (Int, Int), err :: String, true :: Int, false :: Int, index :: (Int, Int), indexNew :: (Int, Int), tac :: [TacLine], tacJ :: [TacLine], tacId :: String, tacIdList :: [String]}
happyEmptyAttrs = HappyAttributes {value = error "invalid reference to attribute 'value'", envVar = error "invalid reference to attribute 'envVar'", envFun = error "invalid reference to attribute 'envFun'", envVarNew = error "invalid reference to attribute 'envVarNew'", envFunNew = error "invalid reference to attribute 'envFunNew'", posi = error "invalid reference to attribute 'posi'", idList = error "invalid reference to attribute 'idList'", aType = error "invalid reference to attribute 'aType'", aTypeList = error "invalid reference to attribute 'aTypeList'", aTypeFun = error "invalid reference to attribute 'aTypeFun'", aReturn = error "invalid reference to attribute 'aReturn'", forLabels = error "invalid reference to attribute 'forLabels'", err = error "invalid reference to attribute 'err'", true = error "invalid reference to attribute 'true'", false = error "invalid reference to attribute 'false'", index = error "invalid reference to attribute 'index'", indexNew = error "invalid reference to attribute 'indexNew'", tac = error "invalid reference to attribute 'tac'", tacJ = error "invalid reference to attribute 'tacJ'", tacId = error "invalid reference to attribute 'tacId'", tacIdList = error "invalid reference to attribute 'tacIdList'"}

-----------------------------------------------------------
-- functions for type checking and other errors handling --
-----------------------------------------------------------

-- checks for arithmetic operations consistency
checkAritOp :: Type -> Type -> [Char] -> [Char] -> Token -> [Char]
checkAritOp t1 t2 e1 e2 op = if e1 == "" && e2 == ""
                               then if (t1 == TBool || t1 == TInt || t1 == TFloat) && (t2 == TBool || t2 == TInt || t2 == TFloat)
                                      then ""
                                      else "Type error at "++(pos op)++": expected numeric type"
                               else if e1/=""
                                      then e1
                                      else e2

-- checks for mod operation consistency
checkModOp :: Type -> Type -> [Char] -> [Char] -> Token -> [Char]
checkModOp t1 t2 e1 e2 op = if e1 == "" && e2 == ""
                              then if (t1 == TBool || t1 == TInt) || (t2 == TBool && t2 == TInt)
                                     then ""
                                     else "Type error at "++(pos op)++": expected int (or bool) as mod operand"
                              else if e1/=""
                                     then e1
                                     else e2

-- checks for relational operations consistency
checkRelOp :: Type -> Type -> [Char] -> [Char] -> Token -> [Char]
checkRelOp t1 t2 e1 e2 op = if (e1 == "") && (e2 == "")
                              then if t1 == t2
                                     then ""
                                     else if (t1 == TBool || t1 == TInt || t1 == TFloat) && (t2 == TBool || t2 == TInt || t2 == TFloat)
                                            then ""
                                            else "Type error at "++(pos op)++": can't match type "++(showType t1)++" with type "++(showType t2)
                              else if e1/=""
                                     then e1
                                     else e2

-- checks for boolean operations consistency
checkBoolOp :: Type -> Type -> [Char] -> [Char] -> Token -> [Char]
checkBoolOp t1 t2 e1 e2 op  = if (e1 == "") && (e2 == "")
                                then if t2 == t1
                                       then if t1/=TBool
                                              then "Type error at "++(pos op)++": expected boolean type" 
                                              else ""
                                       else "Type error at "++(pos op)++": can't match type "++(showType t1)++" with type "++(showType t2)
                                else if e1/=""
                                       then e1
                                       else e2

-- checks for procedure declaration before a call
checkCallProc :: Id -> [ElemFun] -> [Type] -> Token -> [Char]
checkCallProc id envFun tl p  = if not $ searchFun id envFun
                                  then "Error at "++(pos p)++": procedure  "++(idToStr id)++" not in scope"
                                  else checkParams id envFun tl p  

-- checks for function declaration before a call
checkCallFun :: [Char] -> Id -> [ElemFun] -> [Type] -> Token -> [Char]
checkCallFun e id envFun tl p  = if e==""
                                   then if not $ searchFun id envFun
                                          then "Error at "++(pos p)++": function  "++(idToStr id)++" not in scope"
                                          else checkParams id envFun tl p  
                                   else e

-- checks parameters type correctness when a function/procedure is called
checkParams :: Id -> [ElemFun] -> [Type] -> Token -> [Char]
checkParams id envFun tl p  =  if (length $ getTypeListFun $ extractFun id envFun) /= (length tl)
                                 then "Error at "++(pos p)++": wrong number of arguments when calling "++(idToStr id)++", expected: "++(show $ length $ getTypeListFun $ extractFun id envFun)
                                 else case checkTypesList (getTypeListFun $ extractFun id envFun) tl of {
                                           Just a  -> "Type Error at "++(pos p)++": wrong argument type, couldn't match "++(showType $ fst a)++" with "++(showType $ snd a)++" in function "++(idToStr id);
                                           Nothing -> "";
                                      };

-- check type correctness in assignment
checkTypes :: Type -> [Type] -> Maybe (Type, Type)
checkTypes _ [] = Nothing
checkTypes x (y:ys) | (x == TFloat && y == TInt) || (x == TFloat && y == TBool) || (x == TInt && y == TBool) = checkTypes x ys
                    | x/=y = Just (x,y)
                    | otherwise = checkTypes x ys

-- check type correctness in multiple assignment
checkTypesList :: [Type] -> [Type] -> Maybe (Type, Type)
checkTypesList [] [] = Nothing
checkTypesList (x:xs) (y:ys) | (x == TFloat && y == TInt) || (x == TFloat && y == TBool) || (x == TInt && y == TBool) = checkTypesList xs ys
                             | x/=y = Just (x,y)
                             | otherwise = checkTypesList xs ys

-- check if a parameter variable is already declared in the scope
checkVarParams :: [ElemVar] -> [ElemVar] -> Maybe Id
checkVarParams [] ys = Nothing
checkVarParams (x@(Var a _ _ _):xs) ys
                    | (searchVar a ys) =  Just a
                    | otherwise = (checkVarParams xs ys)

-- check if a variable is alreay declared in a block
checkSameBlock :: Id -> [ElemVar] -> Maybe Id
checkSameBlock id [] = Nothing
checkSameBlock id (Var a _ False _:xs) = checkSameBlock id xs
checkSameBlock id (Var a _ True _:xs)
                      | id==a = Just a
                      | otherwise = checkSameBlock id xs

-- check if any member of a list of variables is already declared in a block
checkSameBlockList :: [Id] -> [ElemVar] -> Maybe Id
checkSameBlockList [] _ = Nothing
checkSameBlockList (x:xs) ys = case checkSameBlock x ys of
                                    Just a  -> Just a
                                    Nothing -> checkSameBlockList xs ys


-- type print functions
showType :: Type -> String
showType TVoid   = "void"
showType TInt    = "int"
showType TFloat  = "float"
showType TChar   = "char"
showType TString = "string"
showType TBool   = "boolean"
showType (TPointer t) = "*" ++ showType t
showType (TArray n t) = showType t ++ "[" ++ (show n) ++ "]"


pos tok = tokenPos [tok]


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "Syntax error: error at "++tokenPos ts++
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 11 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "/tmp/ghcb5f8_0/ghc_2.h" #-}


































































































































































{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}





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
{-# LINE 46 "templates/GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

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
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
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





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates/GenericTemplate.hs" #-}

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
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
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
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

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
happyFail  i tk (action) sts stk =
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
