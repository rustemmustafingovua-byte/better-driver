.class public abstract Lk/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/d0;-><init>(I)V

    sput-object v0, Lk/q0;->a:Lk/d0;

    return-void
.end method

.method public static final a()Lk/d0;
    .locals 1

    new-instance v0, Lk/d0;

    invoke-direct {v0}, Lk/d0;-><init>()V

    return-object v0
.end method
