.class public final Lzc/b;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lzc/f;

.field public n:I


# direct methods
.method public constructor <init>(Lzc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lzc/b;->m:Lzc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lzc/b;->l:Ljava/lang/Object;

    iget p1, p0, Lzc/b;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzc/b;->n:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lzc/b;->m:Lzc/f;

    invoke-virtual {v1, v0, p0, p1, p1}, Lzc/f;->b(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
