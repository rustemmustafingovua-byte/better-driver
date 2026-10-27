.class final Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;
.super Ljava/lang/Object;
.source "PortProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/dart_lang/jni/PortProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DartImplementation"
.end annotation


# instance fields
.field final pointer:J

.field final port:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "port"    # J
    .param p3, "pointer"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;->port:J

    .line 35
    iput-wide p3, p0, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;->pointer:J

    .line 36
    return-void
.end method
