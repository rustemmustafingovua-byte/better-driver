.class final Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;
.super Ljava/lang/Exception;
.source "PortProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/dart_lang/jni/PortProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DartException"
.end annotation


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 174
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 175
    iput-object p2, p0, Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;->cause:Ljava/lang/Throwable;

    .line 176
    return-void
.end method
