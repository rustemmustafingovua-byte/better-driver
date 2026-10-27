.class public final synthetic Lod/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:J

.field public final synthetic m:Lz0/d;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(JLz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lod/e6;->l:J

    iput-object p3, p0, Lod/e6;->m:Lz0/d;

    iput p4, p0, Lod/e6;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lod/e6;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-wide v0, p0, Lod/e6;->l:J

    iget-object p0, p0, Lod/e6;->m:Lz0/d;

    invoke-static {v0, v1, p0, p1, p2}, Lod/v6;->A(JLz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
