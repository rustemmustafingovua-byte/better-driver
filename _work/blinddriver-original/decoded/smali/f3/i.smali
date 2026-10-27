.class public final Lf3/i;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf3/z;

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lf3/a0;

.field public final synthetic o:Lz0/d;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public constructor <init>(Lf3/z;Li9/a;Lf3/a0;Lz0/d;II)V
    .locals 0

    iput-object p1, p0, Lf3/i;->l:Lf3/z;

    iput-object p2, p0, Lf3/i;->m:Li9/a;

    iput-object p3, p0, Lf3/i;->n:Lf3/a0;

    iput-object p4, p0, Lf3/i;->o:Lz0/d;

    iput p5, p0, Lf3/i;->p:I

    iput p6, p0, Lf3/i;->q:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lf3/i;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v5

    iget v6, p0, Lf3/i;->q:I

    iget-object v0, p0, Lf3/i;->l:Lf3/z;

    iget-object v1, p0, Lf3/i;->m:Li9/a;

    iget-object v2, p0, Lf3/i;->n:Lf3/a0;

    iget-object v3, p0, Lf3/i;->o:Lz0/d;

    invoke-static/range {v0 .. v6}, Lf3/k;->a(Lf3/z;Li9/a;Lf3/a0;Lz0/d;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
