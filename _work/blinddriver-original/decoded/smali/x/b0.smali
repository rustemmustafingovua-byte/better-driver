.class public final synthetic Lx/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:I

.field public final synthetic n:Lx/c0;

.field public final synthetic o:Lz0/d;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILx/c0;Lz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/b0;->l:Ljava/lang/Object;

    iput p2, p0, Lx/b0;->m:I

    iput-object p3, p0, Lx/b0;->n:Lx/c0;

    iput-object p4, p0, Lx/b0;->o:Lz0/d;

    iput p5, p0, Lx/b0;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lx/b0;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v5

    iget-object v0, p0, Lx/b0;->l:Ljava/lang/Object;

    iget v1, p0, Lx/b0;->m:I

    iget-object v2, p0, Lx/b0;->n:Lx/c0;

    iget-object v3, p0, Lx/b0;->o:Lz0/d;

    invoke-static/range {v0 .. v5}, Lx/l;->b(Ljava/lang/Object;ILx/c0;Lz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
