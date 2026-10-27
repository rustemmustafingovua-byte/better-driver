.class public final Lb/s;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final synthetic l:Lb/r;


# direct methods
.method public constructor <init>(Lb/r;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb/s;->l:Lb/r;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb/s;->l:Lb/r;

    invoke-virtual {p0}, Lb/r;->run()V

    return-void
.end method
