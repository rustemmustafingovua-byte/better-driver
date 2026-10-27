.class public abstract Lt2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg5/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg5/s;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg5/s;-><init>(I)V

    sput-object v0, Lt2/f;->a:Lg5/s;

    new-instance v0, Lmb/q;

    invoke-direct {v0}, Lmb/q;-><init>()V

    return-void
.end method
