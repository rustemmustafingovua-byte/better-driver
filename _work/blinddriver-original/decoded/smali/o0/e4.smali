.class public final synthetic Lo0/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:F

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Z

.field public final synthetic p:Li9/a;

.field public final synthetic q:Lo0/t3;

.field public final synthetic r:Ls/i;

.field public final synthetic s:I

.field public final synthetic t:Lz0/d;

.field public final synthetic u:Lz0/d;

.field public final synthetic v:Lo9/a;

.field public final synthetic w:I

.field public final synthetic x:I


# direct methods
.method public synthetic constructor <init>(FLi9/c;Lf1/r;ZLi9/a;Lo0/t3;Ls/i;ILz0/d;Lz0/d;Lo9/a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/e4;->l:F

    iput-object p2, p0, Lo0/e4;->m:Li9/c;

    iput-object p3, p0, Lo0/e4;->n:Lf1/r;

    iput-boolean p4, p0, Lo0/e4;->o:Z

    iput-object p5, p0, Lo0/e4;->p:Li9/a;

    iput-object p6, p0, Lo0/e4;->q:Lo0/t3;

    iput-object p7, p0, Lo0/e4;->r:Ls/i;

    iput p8, p0, Lo0/e4;->s:I

    iput-object p9, p0, Lo0/e4;->t:Lz0/d;

    iput-object p10, p0, Lo0/e4;->u:Lz0/d;

    iput-object p11, p0, Lo0/e4;->v:Lo9/a;

    iput p12, p0, Lo0/e4;->w:I

    iput p13, p0, Lo0/e4;->x:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v11, p1

    check-cast v11, Lr0/q;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lo0/e4;->w:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v12

    iget v0, p0, Lo0/e4;->x:I

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v13

    iget v0, p0, Lo0/e4;->l:F

    iget-object v1, p0, Lo0/e4;->m:Li9/c;

    iget-object v2, p0, Lo0/e4;->n:Lf1/r;

    iget-boolean v3, p0, Lo0/e4;->o:Z

    iget-object v4, p0, Lo0/e4;->p:Li9/a;

    iget-object v5, p0, Lo0/e4;->q:Lo0/t3;

    iget-object v6, p0, Lo0/e4;->r:Ls/i;

    iget v7, p0, Lo0/e4;->s:I

    iget-object v8, p0, Lo0/e4;->t:Lz0/d;

    iget-object v9, p0, Lo0/e4;->u:Lz0/d;

    iget-object v10, p0, Lo0/e4;->v:Lo9/a;

    invoke-static/range {v0 .. v13}, Lo0/m4;->a(FLi9/c;Lf1/r;ZLi9/a;Lo0/t3;Ls/i;ILz0/d;Lz0/d;Lo9/a;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
