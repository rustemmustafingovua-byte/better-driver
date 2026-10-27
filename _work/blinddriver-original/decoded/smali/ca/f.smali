.class public final synthetic Lca/f;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final s:Lca/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lca/f;

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lca/h;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lca/f;->s:Lca/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    check-cast p2, Lca/i;

    sget v0, Lca/h;->a:I

    new-instance v0, Lca/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lca/i;-><init>(JLca/i;I)V

    return-object v0
.end method
