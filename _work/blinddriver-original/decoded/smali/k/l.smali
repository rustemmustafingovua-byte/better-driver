.class public abstract Lk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/x;-><init>(I)V

    sput-object v0, Lk/l;->a:Lk/x;

    return-void
.end method

.method public static final a()Lk/x;
    .locals 1

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    return-object v0
.end method
