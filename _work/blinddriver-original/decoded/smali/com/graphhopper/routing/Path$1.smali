.class Lcom/graphhopper/routing/Path$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/Path$EdgeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/Path;->calcEdges()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/Path;

.field final synthetic val$edges:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/Path;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/Path$1;->this$0:Lcom/graphhopper/routing/Path;

    iput-object p2, p0, Lcom/graphhopper/routing/Path$1;->val$edges:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public next(Lcom/graphhopper/util/EdgeIteratorState;II)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/Path$1;->val$edges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
