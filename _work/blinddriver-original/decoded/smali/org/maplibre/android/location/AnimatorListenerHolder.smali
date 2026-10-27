.class Lorg/maplibre/android/location/AnimatorListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final animatorType:I

.field private final listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# direct methods
.method public constructor <init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    iput-object p2, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    iget v2, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    iget v3, p1, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p1, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-nez p0, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getAnimatorType()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    return p0
.end method

.method public getListener()Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
