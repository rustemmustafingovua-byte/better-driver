.class public final synthetic Lcom/graphhopper/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lb/e0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Lb/e0;Ljava/util/Map;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/m;->a:Lb/e0;

    iput-object p2, p0, Lcom/graphhopper/m;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/graphhopper/m;->c:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/m;->c:Ljava/util/LinkedHashSet;

    check-cast p1, Lcom/graphhopper/config/Profile;

    iget-object v1, p0, Lcom/graphhopper/m;->a:Lb/e0;

    iget-object p0, p0, Lcom/graphhopper/m;->b:Ljava/util/Map;

    invoke-static {v1, p0, v0, p1}, Lcom/graphhopper/GraphHopper;->d(Lb/e0;Ljava/util/Map;Ljava/util/LinkedHashSet;Lcom/graphhopper/config/Profile;)V

    return-void
.end method
