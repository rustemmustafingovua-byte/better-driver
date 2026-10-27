.class public final Lf2/c3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw9/e;


# direct methods
.method public constructor <init>(Lw9/e;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lf2/c3;->a:Lw9/e;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lf2/c3;->a:Lw9/e;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
