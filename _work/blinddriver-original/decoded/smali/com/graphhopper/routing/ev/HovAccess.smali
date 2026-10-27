.class public Lcom/graphhopper/routing/ev/HovAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "hov_access"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;

    const-string v1, "hov_access"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/SimpleBooleanEncodedValue;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
