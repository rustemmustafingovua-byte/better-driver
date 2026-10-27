.class public abstract Ly1/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly1/l;

    sget-object v1, Lu8/r;->l:Lu8/r;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly1/l;-><init>(Ljava/util/List;Lad/a2;)V

    sput-object v0, Ly1/g0;->a:Ly1/l;

    return-void
.end method

.method public static final a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;
    .locals 3

    new-instance v0, Ly1/f0;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {v0, p1, v1, p2, v2}, Ly1/f0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
