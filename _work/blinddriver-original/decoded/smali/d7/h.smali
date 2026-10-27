.class public Ld7/h;
.super Landroidx/fragment/app/a0;
.source "SourceFile"


# instance fields
.field public z:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/a0;->q:Z

    iget-object v0, p0, Ld7/h;->z:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg7/s;->c(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ld7/h;->z:Landroid/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Ld7/h;->z:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
