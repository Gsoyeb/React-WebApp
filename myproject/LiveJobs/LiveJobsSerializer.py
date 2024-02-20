# serializers.py in your LiveJobs app
from rest_framework import serializers
from .models import LiveJobViewModel

class LiveJobsSerializer(serializers.ModelSerializer):
    class Meta:
        model = LiveJobViewModel
        fields = '__all__'
