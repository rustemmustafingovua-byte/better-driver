.class public final synthetic Lb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:Lb/h0;

.field public final synthetic m:Lb/o;


# direct methods
.method public synthetic constructor <init>(Lb/h0;Lb/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/f;->l:Lb/h0;

    iput-object p2, p0, Lb/f;->m:Lb/o;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lb/f;->m:Lb/o;

    invoke-static {p1}, Lb/b;->m(Lb/o;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    const-string p2, "getOnBackInvokedDispatcher(...)"

    invoke-static {p1, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb/f;->l:Lb/h0;

    invoke-virtual {p0, p1}, Lb/h0;->b(Landroid/window/OnBackInvokedDispatcher;)V

    :cond_0
    return-void
.end method
