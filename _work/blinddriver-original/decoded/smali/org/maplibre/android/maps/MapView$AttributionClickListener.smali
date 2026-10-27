.class Lorg/maplibre/android/maps/MapView$AttributionClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributionClickListener"
.end annotation


# instance fields
.field private final defaultDialogManager:Lorg/maplibre/android/maps/AttributionDialogManager;

.field private uiSettings:Lorg/maplibre/android/maps/UiSettings;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/maplibre/android/maps/AttributionDialogManager;

    invoke-direct {v0, p1, p2}, Lorg/maplibre/android/maps/AttributionDialogManager;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->defaultDialogManager:Lorg/maplibre/android/maps/AttributionDialogManager;

    .line 4
    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/MapView$AttributionClickListener;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V

    return-void
.end method

.method private getDialogManager()Lorg/maplibre/android/maps/AttributionDialogManager;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionDialogManager()Lorg/maplibre/android/maps/AttributionDialogManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->getAttributionDialogManager()Lorg/maplibre/android/maps/AttributionDialogManager;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->defaultDialogManager:Lorg/maplibre/android/maps/AttributionDialogManager;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->getDialogManager()Lorg/maplibre/android/maps/AttributionDialogManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AttributionDialogManager;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->getDialogManager()Lorg/maplibre/android/maps/AttributionDialogManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AttributionDialogManager;->onStop()V

    return-void
.end method
