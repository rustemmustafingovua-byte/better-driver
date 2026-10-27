.class public final synthetic Lod/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:J

.field public final synthetic n:F

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;JFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/q3;->l:Lf1/r;

    iput-wide p2, p0, Lod/q3;->m:J

    iput p4, p0, Lod/q3;->n:F

    iput p5, p0, Lod/q3;->o:I

    iput p6, p0, Lod/q3;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/q3;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v5

    iget-object v0, p0, Lod/q3;->l:Lf1/r;

    iget-wide v1, p0, Lod/q3;->m:J

    iget v3, p0, Lod/q3;->n:F

    iget v6, p0, Lod/q3;->p:I

    invoke-static/range {v0 .. v6}, Lod/e4;->c(Lf1/r;JFLr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
