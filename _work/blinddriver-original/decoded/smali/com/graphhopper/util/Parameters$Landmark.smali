.class public final Lcom/graphhopper/util/Parameters$Landmark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/util/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Landmark"
.end annotation


# static fields
.field public static final ACTIVE_COUNT:Ljava/lang/String; = "lm.active_landmarks"

.field public static final ACTIVE_COUNT_DEFAULT:Ljava/lang/String; = "routing.lm.active_landmarks"

.field public static final COUNT:Ljava/lang/String; = "prepare.lm.landmarks"

.field public static final DISABLE:Ljava/lang/String; = "lm.disable"

.field public static final PREPARE:Ljava/lang/String; = "prepare.lm."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
