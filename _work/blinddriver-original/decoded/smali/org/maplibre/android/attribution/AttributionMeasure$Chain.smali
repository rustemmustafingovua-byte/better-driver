.class Lorg/maplibre/android/attribution/AttributionMeasure$Chain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/attribution/AttributionMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Chain"
.end annotation


# instance fields
.field public commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/attribution/AttributionMeasure$Command;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/maplibre/android/attribution/AttributionMeasure;


# direct methods
.method public varargs constructor <init>(Lorg/maplibre/android/attribution/AttributionMeasure;[Lorg/maplibre/android/attribution/AttributionMeasure$Command;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/attribution/AttributionMeasure$Chain;->this$0:Lorg/maplibre/android/attribution/AttributionMeasure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/attribution/AttributionMeasure$Chain;->commands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public start(Lorg/maplibre/android/attribution/AttributionMeasure;)Lorg/maplibre/android/attribution/AttributionLayout;
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure$Chain;->commands:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/attribution/AttributionMeasure$Command;

    invoke-interface {v0, p1}, Lorg/maplibre/android/attribution/AttributionMeasure$Command;->execute(Lorg/maplibre/android/attribution/AttributionMeasure;)Lorg/maplibre/android/attribution/AttributionLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v0
.end method
