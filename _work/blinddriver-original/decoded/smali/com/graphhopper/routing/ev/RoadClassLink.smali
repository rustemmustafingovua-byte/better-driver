.class public Lcom/graphhopper/routing/ev/RoadClassLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "road_class_link"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;

    const-string v1, "road_class_link"

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
