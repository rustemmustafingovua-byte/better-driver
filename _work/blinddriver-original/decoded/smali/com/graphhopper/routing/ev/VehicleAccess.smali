.class public Lcom/graphhopper/routing/ev/VehicleAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/VehicleAccess;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "access"

    invoke-static {p0, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
