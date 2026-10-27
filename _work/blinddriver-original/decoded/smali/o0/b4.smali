.class public final synthetic Lo0/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lo0/o4;


# direct methods
.method public synthetic constructor <init>(Lo0/o4;I)V
    .locals 0

    iput p2, p0, Lo0/b4;->l:I

    iput-object p1, p0, Lo0/b4;->m:Lo0/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lo0/b4;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ll1/b;

    const/4 p1, 0x0

    iget-object p0, p0, Lo0/b4;->m:Lo0/o4;

    invoke-virtual {p0, p1}, Lo0/o4;->a(F)V

    iget-object p0, p0, Lo0/o4;->o:Lad/t;

    invoke-virtual {p0}, Lad/t;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lo0/b4;->m:Lo0/o4;

    iget-object v0, p0, Lo0/o4;->d:Lr0/a1;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lo0/o4;->c:Lo9/a;

    iget v2, v1, Lo9/a;->a:F

    iget v1, v1, Lo9/a;->b:F

    invoke-static {p1, v2, v1}, Lg6/c1;->e(FFF)F

    move-result p1

    iget v3, p0, Lo0/o4;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_2

    add-int/2addr v3, v5

    if-ltz v3, :cond_2

    move v7, p1

    move v8, v7

    move v6, v4

    :goto_1
    int-to-float v9, v6

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-static {v2, v1, v9}, Lg5/f;->C(FFF)F

    move-result v9

    sub-float v10, v9, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v11, v11, v7

    if-gtz v11, :cond_0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v9

    :cond_0
    if-eq v6, v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move p1, v8

    :cond_2
    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v1

    cmpg-float v1, p1, v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lo0/o4;->e:Li9/c;

    if-eqz v0, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lo0/o4;->c(F)V

    :goto_2
    iget-object p0, p0, Lo0/o4;->b:Li9/a;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_6
    move v4, v5

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lb3/l;

    iget-wide v0, p1, Lb3/l;->a:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Lo0/b4;->m:Lo0/o4;

    iget-object v1, p0, Lo0/o4;->k:Lr0/b1;

    invoke-virtual {v1, v0}, Lr0/b1;->h(I)V

    iget-wide v0, p1, Lb3/l;->a:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    iget-object p0, p0, Lo0/o4;->l:Lr0/b1;

    invoke-virtual {p0, p1}, Lr0/b1;->h(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
