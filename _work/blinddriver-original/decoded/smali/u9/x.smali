.class public abstract Lu9/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu9/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Lz9/t;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lu9/w;->u:Lu9/w;

    goto :goto_2

    :cond_1
    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lz9/n;->a:Lv9/d;

    iget-object v1, v0, Lv9/d;->q:Lv9/d;

    if-nez v0, :cond_2

    sget-object v0, Lu9/w;->u:Lu9/w;

    :cond_2
    :goto_2
    sput-object v0, Lu9/x;->a:Lu9/y;

    return-void
.end method
