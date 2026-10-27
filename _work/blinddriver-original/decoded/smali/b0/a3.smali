.class public final synthetic Lb0/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/a3;->l:I

    iput-object p3, p0, Lb0/a3;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/a3;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb0/a3;->m:Ljava/lang/Object;

    iput p1, p0, Lb0/a3;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILi9/a;Li9/a;Lf1/r;I)V
    .locals 0

    .line 2
    const/16 p5, 0x9

    iput p5, p0, Lb0/a3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb0/a3;->n:I

    iput-object p2, p0, Lb0/a3;->o:Ljava/lang/Object;

    iput-object p3, p0, Lb0/a3;->p:Ljava/lang/Object;

    iput-object p4, p0, Lb0/a3;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lf1/r;Lq/c;Li9/c;II)V
    .locals 0

    .line 3
    const/16 p4, 0xc

    iput p4, p0, Lb0/a3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/a3;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/a3;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb0/a3;->m:Ljava/lang/Object;

    iput p5, p0, Lb0/a3;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Lw/g;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 4
    const/16 p5, 0xe

    iput p5, p0, Lb0/a3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/a3;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/a3;->p:Ljava/lang/Object;

    iput p3, p0, Lb0/a3;->n:I

    iput-object p4, p0, Lb0/a3;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lb0/a3;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lb0/a3;->n:I

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    iget-object p0, p0, Lb0/a3;->m:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, p1, p2}, Lz0/d;->g(Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lx/m0;

    iget-object v1, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v1, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lb0/a3;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lb0/a3;->p:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, p1, p2}, Lx/m0;->a(Ljava/lang/Object;Lz0/d;Lr0/q;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lw/g;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v2, p0, Lb0/a3;->p:Ljava/lang/Object;

    iget v3, p0, Lb0/a3;->n:I

    iget-object v4, p0, Lb0/a3;->m:Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lx/l;->d(Lw/g;Ljava/lang/Object;ILjava/lang/Object;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lq/c;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lf1/r;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lq/f;->a(Lq/c;Lf1/r;Lz0/d;Lr0/q;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lf1/r;

    iget-object v0, p0, Lb0/a3;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lq/c;

    iget-object v0, p0, Lb0/a3;->m:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/c;

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v5

    iget v6, p0, Lb0/a3;->n:I

    invoke-static/range {v1 .. v6}, Lq/f;->b(Lf1/r;Lq/c;Li9/c;Lr0/q;II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lsc/v0;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lua/nav/Tuning;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Li9/c;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lod/v6;->G(Lsc/v0;Lua/nav/Tuning;Li9/c;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Li9/a;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lod/v6;->n(Ljava/lang/String;Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lb0/a3;->p:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/a;

    iget-object v0, p0, Lb0/a3;->m:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lf1/r;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xc01

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget v1, p0, Lb0/a3;->n:I

    invoke-static/range {v1 .. v6}, Lod/e4;->r(ILi9/a;Li9/a;Lf1/r;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lo0/u0;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lo0/q3;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Lo0/h5;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lo0/o1;->b(Lo0/u0;Lo0/q3;Lo0/h5;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lm0/r;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lf1/e;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lm0/d1;->a(Lm0/r;Lf1/e;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lkd/x;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Li9/a;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Lkd/x;->a(Ljava/lang/String;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lkd/x;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/maps/MapView;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Lad/a0;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Lkd/x;->b(Lorg/maplibre/android/maps/MapView;Lad/a0;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lr0/m1;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lc6/o;->D(Lf1/r;Lr0/m1;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Le0/g;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Li0/e;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Li9/a;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lg0/m;->c(Le0/g;Li0/e;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lc1/d;

    iget-object v1, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v1, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lb0/a3;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lb0/a3;->p:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, p1, p2}, Lc1/d;->a(Ljava/lang/Object;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/v;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, Lb4/g;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Li9/c;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, v2, p1, p0}, Lg5/f;->c(Landroidx/lifecycle/v;Lb4/g;Li9/c;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lb0/a3;->o:Ljava/lang/Object;

    check-cast v0, Lb0/e3;

    iget-object v1, p0, Lb0/a3;->p:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lb0/a3;->m:Ljava/lang/Object;

    check-cast v2, Li9/c;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/a3;->n:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Lb0/e3;->b([Ljava/lang/Object;Li9/c;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
