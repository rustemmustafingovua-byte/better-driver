.class public final Lzc/e;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Lua/nav/routing/GeoPoint;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/lang/String;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lzc/f;

.field public t:I


# direct methods
.method public constructor <init>(Lzc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lzc/e;->s:Lzc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lzc/e;->r:Ljava/lang/Object;

    iget p1, p0, Lzc/e;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzc/e;->t:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lzc/e;->s:Lzc/f;

    invoke-virtual {v1, v0, p0, p1, p1}, Lzc/f;->e(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
