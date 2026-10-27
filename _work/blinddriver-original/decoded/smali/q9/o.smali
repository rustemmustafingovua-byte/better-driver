.class public final Lq9/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;
.implements Lq9/d;


# instance fields
.field public final a:Lq9/h;


# direct methods
.method public constructor <init>(Lq9/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/o;->a:Lq9/h;

    return-void
.end method


# virtual methods
.method public final a(I)Lq9/h;
    .locals 2

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    sget-object p0, Lq9/e;->a:Lq9/e;

    return-object p0

    :cond_0
    new-instance v1, Lq9/n;

    iget-object p0, p0, Lq9/o;->a:Lq9/h;

    invoke-direct {v1, p0, p1, v0}, Lq9/n;-><init>(Lq9/h;II)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lq9/b;

    invoke-direct {v0, p0}, Lq9/b;-><init>(Lq9/o;)V

    return-object v0
.end method

.method public final take()Lq9/h;
    .locals 0

    return-object p0
.end method
