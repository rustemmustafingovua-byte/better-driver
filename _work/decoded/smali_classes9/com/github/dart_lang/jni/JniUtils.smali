.class public Lcom/github/dart_lang/jni/JniUtils;
.super Ljava/lang/Object;
.source "JniUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "dartjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fromReferenceAddress(J)Ljava/lang/Object;
.end method
