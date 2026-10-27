.class public final synthetic Lo0/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lz0/d;

.field public final synthetic o:Lf1/r;

.field public final synthetic p:Z

.field public final synthetic q:Lm1/h0;

.field public final synthetic r:Lo0/n3;

.field public final synthetic s:Lo0/o3;

.field public final synthetic t:Lp/x;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/m0;->l:Z

    iput-object p2, p0, Lo0/m0;->m:Li9/a;

    iput-object p3, p0, Lo0/m0;->n:Lz0/d;

    iput-object p4, p0, Lo0/m0;->o:Lf1/r;

    iput-boolean p5, p0, Lo0/m0;->p:Z

    iput-object p6, p0, Lo0/m0;->q:Lm1/h0;

    iput-object p7, p0, Lo0/m0;->r:Lo0/n3;

    iput-object p8, p0, Lo0/m0;->s:Lo0/o3;

    iput-object p9, p0, Lo0/m0;->t:Lp/x;

    iput p10, p0, Lo0/m0;->u:I

    iput p11, p0, Lo0/m0;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/m0;->u:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget-boolean v0, p0, Lo0/m0;->l:Z

    iget-object v1, p0, Lo0/m0;->m:Li9/a;

    iget-object v2, p0, Lo0/m0;->n:Lz0/d;

    iget-object v3, p0, Lo0/m0;->o:Lf1/r;

    iget-boolean v4, p0, Lo0/m0;->p:Z

    iget-object v5, p0, Lo0/m0;->q:Lm1/h0;

    iget-object v6, p0, Lo0/m0;->r:Lo0/n3;

    iget-object v7, p0, Lo0/m0;->s:Lo0/o3;

    iget-object v8, p0, Lo0/m0;->t:Lp/x;

    iget v11, p0, Lo0/m0;->v:I

    invoke-static/range {v0 .. v11}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
