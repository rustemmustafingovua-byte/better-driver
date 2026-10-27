.class public final Lb/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lt8/o;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h0;->a:Ljava/lang/Runnable;

    new-instance p1, Lad/t;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lb/h0;->b:Lt8/o;

    return-void
.end method


# virtual methods
.method public final a()Lb/f0;
    .locals 0

    iget-object p0, p0, Lb/h0;->b:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/f0;

    return-object p0
.end method

.method public final b(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 4

    invoke-virtual {p0}, Lb/h0;->a()Lb/f0;

    move-result-object v0

    iget-object v0, v0, Lb/f0;->c:Lg5/i;

    new-instance v1, Lh4/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lh4/k;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lg5/i;->g(Lh4/k;I)V

    invoke-virtual {p0}, Lb/h0;->a()Lb/f0;

    move-result-object p0

    iget-object p0, p0, Lb/f0;->c:Lg5/i;

    new-instance v0, Lh4/k;

    const v1, 0xf4240

    invoke-direct {v0, p1, v1}, Lh4/k;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    invoke-virtual {p0, v0, v2}, Lg5/i;->g(Lh4/k;I)V

    return-void
.end method
