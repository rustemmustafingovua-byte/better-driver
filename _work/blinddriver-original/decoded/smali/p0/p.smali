.class public final synthetic Lp0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic l:Ljava/lang/CharSequence;

.field public final synthetic m:Li9/e;

.field public final synthetic n:Lo0/a5;

.field public final synthetic o:Li9/f;

.field public final synthetic p:Li9/e;

.field public final synthetic q:Li9/e;

.field public final synthetic r:Li9/e;

.field public final synthetic s:Z

.field public final synthetic t:Z

.field public final synthetic u:Z

.field public final synthetic v:Ls/i;

.field public final synthetic w:Lu/s0;

.field public final synthetic x:Lo0/x4;

.field public final synthetic y:Lz0/d;

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Li9/e;Lo0/a5;Li9/f;Li9/e;Li9/e;Li9/e;ZZZLs/i;Lu/s0;Lo0/x4;Lz0/d;II)V
    .locals 1

    sget-object v0, Lp0/z;->l:[Lp0/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/p;->l:Ljava/lang/CharSequence;

    iput-object p2, p0, Lp0/p;->m:Li9/e;

    iput-object p3, p0, Lp0/p;->n:Lo0/a5;

    iput-object p4, p0, Lp0/p;->o:Li9/f;

    iput-object p5, p0, Lp0/p;->p:Li9/e;

    iput-object p6, p0, Lp0/p;->q:Li9/e;

    iput-object p7, p0, Lp0/p;->r:Li9/e;

    iput-boolean p8, p0, Lp0/p;->s:Z

    iput-boolean p9, p0, Lp0/p;->t:Z

    iput-boolean p10, p0, Lp0/p;->u:Z

    iput-object p11, p0, Lp0/p;->v:Ls/i;

    iput-object p12, p0, Lp0/p;->w:Lu/s0;

    iput-object p13, p0, Lp0/p;->x:Lo0/x4;

    iput-object p14, p0, Lp0/p;->y:Lz0/d;

    move/from16 p1, p15

    iput p1, p0, Lp0/p;->z:I

    move/from16 p1, p16

    iput p1, p0, Lp0/p;->A:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lp0/z;->l:[Lp0/z;

    move-object/from16 v16, p1

    check-cast v16, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lp0/p;->z:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v17

    iget v1, v0, Lp0/p;->A:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v18

    iget-object v2, v0, Lp0/p;->l:Ljava/lang/CharSequence;

    iget-object v3, v0, Lp0/p;->m:Li9/e;

    iget-object v4, v0, Lp0/p;->n:Lo0/a5;

    iget-object v5, v0, Lp0/p;->o:Li9/f;

    iget-object v6, v0, Lp0/p;->p:Li9/e;

    iget-object v7, v0, Lp0/p;->q:Li9/e;

    iget-object v8, v0, Lp0/p;->r:Li9/e;

    iget-boolean v9, v0, Lp0/p;->s:Z

    iget-boolean v10, v0, Lp0/p;->t:Z

    iget-boolean v11, v0, Lp0/p;->u:Z

    iget-object v12, v0, Lp0/p;->v:Ls/i;

    iget-object v13, v0, Lp0/p;->w:Lu/s0;

    iget-object v14, v0, Lp0/p;->x:Lo0/x4;

    iget-object v15, v0, Lp0/p;->y:Lz0/d;

    invoke-static/range {v2 .. v18}, Lp0/y;->a(Ljava/lang/CharSequence;Li9/e;Lo0/a5;Li9/f;Li9/e;Li9/e;Li9/e;ZZZLs/i;Lu/s0;Lo0/x4;Lz0/d;Lr0/q;II)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
