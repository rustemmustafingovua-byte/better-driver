.class public final synthetic Lcom/graphhopper/storage/index/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/storage/index/InMemConstructionIndex;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/storage/index/InMemConstructionIndex;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/index/a;->a:Lcom/graphhopper/storage/index/InMemConstructionIndex;

    iput p2, p0, Lcom/graphhopper/storage/index/a;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/storage/index/a;->b:I

    check-cast p1, Lpb/a;

    iget-object p0, p0, Lcom/graphhopper/storage/index/a;->a:Lcom/graphhopper/storage/index/InMemConstructionIndex;

    invoke-static {p0, v0, p1}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->a(Lcom/graphhopper/storage/index/InMemConstructionIndex;ILpb/a;)V

    return-void
.end method
