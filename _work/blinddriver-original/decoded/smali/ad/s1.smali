.class public final Lad/s1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lid/d1;

.field public m:Lua/nav/routing/GeoPoint;

.field public n:Ljava/util/List;

.field public o:Lad/o0;

.field public p:Li9/c;

.field public q:Ljava/util/List;

.field public r:Ljava/lang/Integer;

.field public s:Lua/nav/routing/GeoPoint;

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lad/t1;

.field public v:I


# direct methods
.method public constructor <init>(Lad/t1;La9/c;)V
    .locals 0

    iput-object p1, p0, Lad/s1;->u:Lad/t1;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lad/s1;->t:Ljava/lang/Object;

    iget p1, p0, Lad/s1;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lad/s1;->v:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lad/s1;->u:Lad/t1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lad/t1;->a(Lid/d1;Lua/nav/routing/GeoPoint;Ljava/util/ArrayList;Lad/o0;Li9/c;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
