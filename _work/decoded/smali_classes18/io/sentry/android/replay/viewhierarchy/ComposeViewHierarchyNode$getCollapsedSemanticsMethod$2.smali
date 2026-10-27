.class final Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposeViewHierarchyNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeViewHierarchyNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeViewHierarchyNode.kt\nio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,336:1\n1#2:337\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Method;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;

    invoke-direct {v0}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;-><init>()V

    sput-object v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;->INSTANCE:Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;->invoke()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Method;
    .locals 4

    .line 43
    nop

    .line 45
    :try_start_0
    const-class v0, Landroidx/compose/ui/node/LayoutNode;

    .line 46
    const-string v1, "getCollapsedSemantics$ui_release"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    move-object v1, v0

    .line 337
    .local v1, "$this$invoke_u24lambda_u240":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-apply-ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v1    # "$this$invoke_u24lambda_u240":Ljava/lang/reflect/Method;
    .end local v2    # "$i$a$-apply-ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2$1":I
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
