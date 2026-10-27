.class public final Lzc/a;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/ArrayList;

.field public m:Lua/nav/geocoding/Place;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lzc/f;

.field public p:I


# direct methods
.method public constructor <init>(Lzc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lzc/a;->o:Lzc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzc/a;->n:Ljava/lang/Object;

    iget p1, p0, Lzc/a;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzc/a;->p:I

    iget-object p1, p0, Lzc/a;->o:Lzc/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lzc/f;->a(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
