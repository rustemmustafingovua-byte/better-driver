.class public final Lm/h;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lm/a0;

.field public final synthetic o:Lm/b0;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lz0/d;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public constructor <init>(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;II)V
    .locals 0

    iput-boolean p1, p0, Lm/h;->l:Z

    iput-object p2, p0, Lm/h;->m:Lf1/r;

    iput-object p3, p0, Lm/h;->n:Lm/a0;

    iput-object p4, p0, Lm/h;->o:Lm/b0;

    iput-object p5, p0, Lm/h;->p:Ljava/lang/String;

    iput-object p6, p0, Lm/h;->q:Lz0/d;

    iput p7, p0, Lm/h;->r:I

    iput p8, p0, Lm/h;->s:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lm/h;->r:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget v8, p0, Lm/h;->s:I

    iget-boolean v0, p0, Lm/h;->l:Z

    iget-object v1, p0, Lm/h;->m:Lf1/r;

    iget-object v2, p0, Lm/h;->n:Lm/a0;

    iget-object v3, p0, Lm/h;->o:Lm/b0;

    iget-object v4, p0, Lm/h;->p:Ljava/lang/String;

    iget-object v5, p0, Lm/h;->q:Lz0/d;

    invoke-static/range {v0 .. v8}, Lm/l;->b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
