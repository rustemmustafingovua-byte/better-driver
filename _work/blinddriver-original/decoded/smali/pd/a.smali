.class public abstract Lpd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/u0;

.field public static final b:Lo0/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 98

    invoke-static {}, Lo0/v0;->e()Lo0/u0;

    move-result-object v0

    sput-object v0, Lpd/a;->a:Lo0/u0;

    sget-wide v2, Lq0/e;->z:J

    sget-wide v4, Lq0/e;->j:J

    sget-wide v6, Lq0/e;->A:J

    sget-wide v8, Lq0/e;->k:J

    sget-wide v10, Lq0/e;->e:J

    sget-wide v12, Lq0/e;->E:J

    sget-wide v14, Lq0/e;->n:J

    sget-wide v16, Lq0/e;->F:J

    sget-wide v18, Lq0/e;->o:J

    sget-wide v20, Lq0/e;->R:J

    sget-wide v22, Lq0/e;->t:J

    sget-wide v24, Lq0/e;->S:J

    sget-wide v26, Lq0/e;->u:J

    sget-wide v28, Lq0/e;->a:J

    sget-wide v30, Lq0/e;->g:J

    sget-wide v32, Lq0/e;->I:J

    sget-wide v34, Lq0/e;->r:J

    sget-wide v36, Lq0/e;->Q:J

    sget-wide v38, Lq0/e;->s:J

    sget-wide v42, Lq0/e;->f:J

    sget-wide v44, Lq0/e;->d:J

    sget-wide v46, Lq0/e;->b:J

    sget-wide v48, Lq0/e;->h:J

    sget-wide v50, Lq0/e;->c:J

    sget-wide v52, Lq0/e;->i:J

    sget-wide v54, Lq0/e;->x:J

    sget-wide v56, Lq0/e;->y:J

    sget-wide v58, Lq0/e;->D:J

    sget-wide v60, Lq0/e;->J:J

    sget-wide v64, Lq0/e;->K:J

    sget-wide v66, Lq0/e;->L:J

    sget-wide v68, Lq0/e;->M:J

    sget-wide v70, Lq0/e;->N:J

    sget-wide v72, Lq0/e;->O:J

    sget-wide v62, Lq0/e;->P:J

    sget-wide v74, Lq0/e;->B:J

    sget-wide v76, Lq0/e;->C:J

    sget-wide v78, Lq0/e;->l:J

    sget-wide v80, Lq0/e;->m:J

    sget-wide v82, Lq0/e;->G:J

    sget-wide v84, Lq0/e;->H:J

    sget-wide v86, Lq0/e;->p:J

    sget-wide v88, Lq0/e;->q:J

    sget-wide v90, Lq0/e;->T:J

    sget-wide v92, Lq0/e;->U:J

    sget-wide v94, Lq0/e;->v:J

    sget-wide v96, Lq0/e;->w:J

    new-instance v1, Lo0/u0;

    move-wide/from16 v40, v2

    invoke-direct/range {v1 .. v97}, Lo0/u0;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    sput-object v1, Lpd/a;->b:Lo0/u0;

    return-void
.end method

.method public static final a(Lr0/q;I)V
    .locals 4

    const v0, 0x2c13b829

    invoke-virtual {p0, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lpd/b;->a:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const v0, 0x760660fe

    invoke-virtual {p0, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lf2/o0;->a:Lr0/a0;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0, v3}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    const v1, 0x76065e54

    invoke-virtual {p0, v1}, Lr0/q;->b0(I)V

    invoke-virtual {p0, v3}, Lr0/q;->q(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_3

    sget-object v0, Lpd/a;->b:Lo0/u0;

    goto :goto_3

    :cond_3
    sget-object v0, Lpd/a;->a:Lo0/u0;

    :goto_3
    const/16 v1, 0xc00

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p0, v1}, Lo0/o1;->b(Lo0/u0;Lo0/q3;Lo0/h5;Lr0/q;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p0}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lp2/x;

    invoke-direct {v0, p1}, Lp2/x;-><init>(I)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method
