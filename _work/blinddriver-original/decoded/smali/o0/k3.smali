.class public final synthetic Lo0/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lr0/r2;

.field public final synthetic m:Z

.field public final synthetic n:Lc2/f1;


# direct methods
.method public synthetic constructor <init>(Lr0/r2;ZLc2/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/k3;->l:Lr0/r2;

    iput-boolean p2, p0, Lo0/k3;->m:Z

    iput-object p3, p0, Lo0/k3;->n:Lc2/f1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lc2/e1;

    iget-object v0, p0, Lo0/k3;->l:Lr0/r2;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-boolean v1, p0, Lo0/k3;->m:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    iget-object p0, p0, Lo0/k3;->n:Lc2/f1;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v1, v0}, Lc2/e1;->i(Lc2/f1;IIF)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
