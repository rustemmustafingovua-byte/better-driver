.class public final Lzc/c;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lua/nav/routing/GeoPoint;

.field public m:Lzc/f;

.field public n:Lia/r;

.field public o:J

.field public p:J

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lzc/f;

.field public s:I


# direct methods
.method public constructor <init>(Lzc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lzc/c;->r:Lzc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzc/c;->q:Ljava/lang/Object;

    iget p1, p0, Lzc/c;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzc/c;->s:I

    iget-object p1, p0, Lzc/c;->r:Lzc/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lzc/f;->c(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
