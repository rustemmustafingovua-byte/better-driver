.class public Lcom/graphhopper/routing/ev/Subnetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "subnetwork"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_subnetwork"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create key containing \'subnetwork\' in prefix: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
