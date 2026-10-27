.class public final synthetic Lod/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/a;

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(ZLi9/a;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/c1;->l:Z

    iput-object p2, p0, Lod/c1;->m:Li9/a;

    iput-boolean p3, p0, Lod/c1;->n:Z

    iput p4, p0, Lod/c1;->o:I

    iput p5, p0, Lod/c1;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/c1;->o:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v4

    iget-boolean v0, p0, Lod/c1;->l:Z

    iget-object v1, p0, Lod/c1;->m:Li9/a;

    iget-boolean v2, p0, Lod/c1;->n:Z

    iget v5, p0, Lod/c1;->p:I

    invoke-static/range {v0 .. v5}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
