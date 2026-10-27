.class public abstract Lcom/graphhopper/Trip$Leg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/Trip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Leg"
.end annotation


# instance fields
.field public final departureLocation:Ljava/lang/String;

.field public final distance:D

.field public final geometry:Lpb/i;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lpb/i;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/Trip$Leg;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/Trip$Leg;->departureLocation:Ljava/lang/String;

    iput-object p3, p0, Lcom/graphhopper/Trip$Leg;->geometry:Lpb/i;

    iput-wide p4, p0, Lcom/graphhopper/Trip$Leg;->distance:D

    return-void
.end method


# virtual methods
.method public abstract getArrivalTime()Ljava/util/Date;
.end method

.method public abstract getDepartureTime()Ljava/util/Date;
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/Trip$Leg;->distance:D

    return-wide v0
.end method
