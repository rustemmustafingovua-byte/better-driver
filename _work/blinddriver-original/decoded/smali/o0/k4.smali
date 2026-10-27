.class public final Lo0/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lo9/a;

.field public final synthetic o:I

.field public final synthetic p:Z

.field public final synthetic q:F

.field public final synthetic r:Li9/a;


# direct methods
.method public constructor <init>(ZLi9/c;Lo9/a;IZFLi9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/k4;->l:Z

    iput-object p2, p0, Lo0/k4;->m:Li9/c;

    iput-object p3, p0, Lo0/k4;->n:Lo9/a;

    iput p4, p0, Lo0/k4;->o:I

    iput-boolean p5, p0, Lo0/k4;->p:Z

    iput p6, p0, Lo0/k4;->q:F

    iput-object p7, p0, Lo0/k4;->r:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Lw1/b;

    iget-object p1, p1, Lw1/b;->a:Landroid/view/KeyEvent;

    iget-object v0, p0, Lo0/k4;->n:Lo9/a;

    iget v1, v0, Lo9/a;->b:F

    iget-boolean v2, p0, Lo0/k4;->l:Z

    if-nez v2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v2, p0, Lo0/k4;->m:Li9/c;

    if-nez v2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_c

    iget v3, v0, Lo9/a;->a:F

    sub-float v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lo0/k4;->o:I

    if-lez v7, :cond_2

    add-int/2addr v7, v6

    goto :goto_0

    :cond_2
    const/16 v7, 0x64

    :goto_0
    int-to-float v8, v7

    div-float/2addr v4, v8

    iget-boolean v8, p0, Lo0/k4;->p:Z

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Lw1/c;->a(I)J

    move-result-wide v9

    sget-wide v11, Lw1/a;->d:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    iget p0, p0, Lo0/k4;->q:F

    if-eqz p1, :cond_5

    int-to-float p1, v8

    mul-float/2addr p1, v4

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    move v5, v6

    goto/16 :goto_3

    :cond_5
    sget-wide v11, Lw1/a;->e:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    int-to-float p1, v8

    mul-float/2addr p1, v4

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-wide v11, Lw1/a;->g:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_7

    int-to-float p1, v8

    mul-float/2addr p1, v4

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    sget-wide v11, Lw1/a;->f:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_8

    int-to-float p1, v8

    mul-float/2addr p1, v4

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    sget-wide v11, Lw1/a;->v:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    sget-wide v11, Lw1/a;->w:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    sget-wide v11, Lw1/a;->C:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    const/16 v1, 0xa

    if-eqz p1, :cond_b

    div-int/2addr v7, v1

    invoke-static {v7, v6, v1}, Lg6/c1;->f(III)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    sget-wide v11, Lw1/a;->D:J

    invoke-static {v9, v10, v11, v12}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_e

    div-int/2addr v7, v1

    invoke-static {v7, v6, v1}, Lg6/c1;->f(III)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lg6/c1;->i(Ljava/lang/Float;Lo9/a;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    if-ne v3, v6, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Lw1/c;->a(I)J

    move-result-wide v0

    sget-wide v2, Lw1/a;->d:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->e:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->g:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->f:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->v:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->w:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->C:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v2, Lw1/a;->D:J

    invoke-static {v0, v1, v2, v3}, Lw1/a;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    iget-object p0, p0, Lo0/k4;->r:Li9/a;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
