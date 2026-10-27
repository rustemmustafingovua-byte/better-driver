.class public final synthetic Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lm0/r;

.field public final synthetic m:Z

.field public final synthetic n:La3/j;

.field public final synthetic o:Z

.field public final synthetic p:J

.field public final synthetic q:F

.field public final synthetic r:Lf1/r;

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lm0/r;ZLa3/j;ZJFLf1/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/d;->l:Lm0/r;

    iput-boolean p2, p0, Lm0/d;->m:Z

    iput-object p3, p0, Lm0/d;->n:La3/j;

    iput-boolean p4, p0, Lm0/d;->o:Z

    iput-wide p5, p0, Lm0/d;->p:J

    iput p7, p0, Lm0/d;->q:F

    iput-object p8, p0, Lm0/d;->r:Lf1/r;

    iput p9, p0, Lm0/d;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lm0/d;->s:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lm0/d;->l:Lm0/r;

    iget-boolean v1, p0, Lm0/d;->m:Z

    iget-object v2, p0, Lm0/d;->n:La3/j;

    iget-boolean v3, p0, Lm0/d;->o:Z

    iget-wide v4, p0, Lm0/d;->p:J

    iget v6, p0, Lm0/d;->q:F

    iget-object v7, p0, Lm0/d;->r:Lf1/r;

    invoke-static/range {v0 .. v9}, Lm0/d1;->d(Lm0/r;ZLa3/j;ZJFLf1/r;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
