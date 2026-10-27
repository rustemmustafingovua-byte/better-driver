.class public final synthetic Lx/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lx/l0;


# direct methods
.method public synthetic constructor <init>(Lx/l0;I)V
    .locals 0

    iput p2, p0, Lx/k0;->l:I

    iput-object p1, p0, Lx/k0;->m:Lx/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lx/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lx/k0;->m:Lx/l0;

    iget-object v0, p0, Lx/l0;->A:Lw/c;

    iget-object v0, v0, Lw/c;->b:Lw/p;

    invoke-virtual {v0}, Lw/p;->g()Lw/k;

    move-result-object v1

    iget-object v1, v1, Lw/k;->o:Lr/m1;

    sget-object v2, Lr/m1;->l:Lr/m1;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lw/p;->g()Lw/k;

    move-result-object v0

    invoke-virtual {v0}, Lw/k;->g()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lw/p;->g()Lw/k;

    move-result-object v0

    invoke-virtual {v0}, Lw/k;->g()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lx/l0;->A:Lw/c;

    iget-object p0, p0, Lw/c;->b:Lw/p;

    invoke-virtual {p0}, Lw/p;->g()Lw/k;

    move-result-object v1

    iget v1, v1, Lw/k;->l:I

    neg-int v1, v1

    invoke-virtual {p0}, Lw/p;->g()Lw/k;

    move-result-object p0

    iget p0, p0, Lw/k;->p:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    int-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lx/k0;->m:Lx/l0;

    iget-object p0, p0, Lx/l0;->A:Lw/c;

    iget-object p0, p0, Lw/c;->b:Lw/p;

    iget-object v0, p0, Lw/p;->e:Lf8/p2;

    iget-object v0, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    iget-object v1, p0, Lw/p;->e:Lf8/p2;

    iget-object v1, v1, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v1, Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    invoke-virtual {p0}, Lw/p;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    mul-int/lit16 v0, v0, 0x1f4

    add-int/2addr v0, v1

    int-to-float p0, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    add-float/2addr p0, v0

    goto :goto_2

    :cond_1
    mul-int/lit16 v0, v0, 0x1f4

    add-int/2addr v0, v1

    int-to-float p0, v0

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lx/k0;->m:Lx/l0;

    iget-object p0, p0, Lx/l0;->A:Lw/c;

    iget-object p0, p0, Lw/c;->b:Lw/p;

    iget-object v0, p0, Lw/p;->e:Lf8/p2;

    iget-object v0, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    iget-object p0, p0, Lw/p;->e:Lf8/p2;

    iget-object p0, p0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p0, Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    mul-int/lit16 v0, v0, 0x1f4

    add-int/2addr v0, p0

    int-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
